import numpy as np
import serial
import os
import tqdm
import threading
import time
import struct

# Directory containing frame data
frames_dir = r"C:\Users\Cyphe\Documents\SUSTech Assignment\Term 5\Embedded System\Assignment\Assignment 3\Video Frames"

# Get all frame files
frame_files = sorted([os.path.join(frames_dir, f) for f in os.listdir(frames_dir) if f.endswith('.npy')])
# Frame rate settings
fps = 30  # Original video frame rate
frames_per_second = 2  # Frames to send per second (adjustable)
frame_interval = int(fps / frames_per_second)
play_status = 1  # 1 for play, 0 for pause

# Create a serial port object
ser = serial.Serial("COM5", 1000000, 8, "N", 1, timeout=1)

# Shared variables for synchronization
stop_program = threading.Event()  # Event to signal threads to stop
frame_interval_lock = threading.Lock()
play_status_lock = threading.Lock()

def send_frames():
    """Thread for sending frames over UART."""
    global stop_program
    frame_index = 0
    while not stop_program.is_set():

        with play_status_lock:
            if play_status == 0:
                time.sleep(0.1)
                continue

        # Get the current frame file
        frame_file = frame_files[frame_index]

        # Skip frames based on the current interval
        with frame_interval_lock:
            if frame_index % frame_interval != 0:
                frame_index = (frame_index + 1) % len(frame_files)
                continue

        # Load and preprocess the frame
        frame_16bit = np.load(frame_file)
        flat_array = frame_16bit.flatten()

        # Send a fixed marker to indicate the start of a frame
        frame_marker = 0x1234
        ser.write(frame_marker.to_bytes(2, byteorder="little"))  # 16-bit marker

        # Send the frame data
        for value in flat_array:
            ser.write(value.astype(np.uint16).tobytes())

        # Wait for the next frame interval
        time.sleep(0.25)
        frame_index = (frame_index + 1) % len(frame_files)

    print("Stopped sending frames.")


def receive_feedback():
    """Thread for receiving feedback over UART and adjusting frames_per_second."""
    global frames_per_second, frame_interval, play_status
    while not stop_program.is_set():
        if ser.in_waiting >= 2:  # Check if at least 2 bytes are available
            # Read the 2-byte signal
            received_signal = ser.read(2)
            received_signal = struct.unpack("<2B", received_signal)

            if received_signal[1] == 0xAA:

                if received_signal[0] == 0x01:
                    frames_per_second = 2
                    print("Play speed: normal")
                elif received_signal[0] == 0x02:
                    frames_per_second = 1
                    print("Play speed: fast")
                elif received_signal[0] == 0x03:
                    frames_per_second = 4
                    print("Play speed: slow")
                
                with frame_interval_lock:
                    frame_interval = int(fps / frames_per_second)

            elif received_signal[1] == 0xBB:
                with play_status_lock:
                    if received_signal[0] == 0x01:
                        play_status = 1
                        print("Play status: play")
                    elif received_signal[0] == 0x02:
                        play_status = 0
                        print("Play status: pause")



    print("Stopped receiving feedback.")


try:
    # Start sending and receiving threads
    sender_thread = threading.Thread(target=send_frames, daemon=True)
    receiver_thread = threading.Thread(target=receive_feedback, daemon=True)

    sender_thread.start()
    receiver_thread.start()

    # Wait for threads to run until interrupted
    while sender_thread.is_alive() or receiver_thread.is_alive():
        time.sleep(0.1)

except KeyboardInterrupt:
    print("\nInterrupt received, stopping...")
    stop_program.set()  # Signal threads to stop

    # Wait for threads to complete before exiting
    sender_thread.join()
    receiver_thread.join()

finally:
    ser.close()
    print("Program terminated.")
