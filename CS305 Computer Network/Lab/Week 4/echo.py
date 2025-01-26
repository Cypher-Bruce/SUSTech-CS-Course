import socket
def echo():
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.bind(('127.0.0.1', 5555))
    sock.listen(10)
    sock.settimeout(0.5)

    while True:
        try:
            conn, address = sock.accept()
            while True:
                data = conn.recv(2048)
                if data and data != b'exit':
                    conn.send(data)
                    print(data)
                else:
                    conn.close()
                    break
        except socket.timeout:
            continue
    
if __name__ == "__main__":
    try:
        echo()
    except KeyboardInterrupt:
        pass    