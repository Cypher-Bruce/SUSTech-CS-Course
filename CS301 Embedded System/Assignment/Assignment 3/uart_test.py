import serial
import struct
import random

# Configuration
UART_PORT = "COM5"       # Replace with your actual UART port
BAUD_RATE = 1000000        # Replace with your UART baud rate
TIMEOUT = 1               # Timeout for UART operations in seconds

def uart_test():
    """Test UART by sending and receiving two bytes."""
    # Open the UART port
    with serial.Serial(UART_PORT, BAUD_RATE, 8, "N", 1, timeout=TIMEOUT) as ser:
        print(f"Testing UART on {UART_PORT} at {BAUD_RATE} baud...")

        # Define test data (2 bytes)
        send_data = (random.randint(0, 255), random.randint(0, 255))
        packed_data = struct.pack('<2B', *send_data)  # Pack as 2 bytes (little-endian)

        # Send data to MCU
        print(f"Sending: {send_data}")
        ser.write(packed_data)

        # Read 2 bytes from MCU
        received_data = ser.read(2)
        if len(received_data) == 2:
            # Unpack received bytes
            received_data = struct.unpack('<2B', received_data)
            print(f"Received: {received_data}")

            # Check if received data matches sent data
            if received_data == send_data:
                print("Success: Sent and received data match!")
            else:
                print("Error: Sent and received data do not match.")
        else:
            print("Error: No or incomplete response received.")

if __name__ == "__main__":
    uart_test()
