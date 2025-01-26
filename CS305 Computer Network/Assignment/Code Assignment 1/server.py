import socketserver
import time

from functions import *

commands = [
    '?',
    'help',
    'exit',
    'login {name} {password}',
    'register {name} {password}'
]

### Task 2.1 Read user information files
users = load_users(user_inf_txt)
print(users)
## Task 2.1

def log_message(client_address, message, log_file="client_messages.txt"):
    with open(log_file, "a") as f:
        timestamp = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
        f.write(f"[{timestamp}] {client_address}: {message}\n")

def main_loop(socket_conn, client_address, login_user):
    """

    :param socket_conn: socket connection
    :param client_address: client IP address
    :param login_user: str current logged-in user
    :return continue flag: boolean for main loop continue judgement, login user: str
    """
    ## Task 1.3
    try:
        # Receive data from the client
        receive_data = socket_conn.recv(1024).decode('utf-8').strip()
        if not receive_data:
            return False, None
        else:
            log_message(client_address, receive_data)

    except ConnectionResetError:
        print(f"Connection with {client_address} was reset")
        return False, None
    except Exception as e:
        print(f"An error occurred with {client_address}: {e}")
        return False, None
    ## Task 1.3

    # Command processing before login
    if not login_user:
        # Command processing without arguments
        if receive_data == '?' or receive_data == 'help' or receive_data == 'ls':
            feedback_data = 'Available commends: \n\t' + '\n\t'.join(commands)
            feedback_data = SUCCESS(feedback_data)
        elif receive_data == 'exit':
            feedback_data = 'disconnected'
            feedback_data = SUCCESS(feedback_data)
        else:
            # Command processing with arguments
            cmd = receive_data.split(' ')
            if cmd[0] == 'login':
                if len(cmd) < 3:
                    feedback_data = 'Please re-enter the login commend with your username and password'
                    feedback_data = FAILURE(feedback_data)
                elif len(cmd) == 3:
                    ## Task 2.3, 3.2, 3.5
                    feedback_data, login_user = login_authentication(socket_conn, cmd, users)
                    ## Task 2.3, 3.2, 3.5
                else:
                    feedback_data = "Password shouldn't include spaces"
                    feedback_data = FAILURE(feedback_data)
            elif cmd[0] == 'register':
                if len(cmd) < 3:
                    feedback_data = 'Please re-enter the command with username and password'
                    feedback_data = FAILURE(feedback_data)
                elif len(cmd) > 3:
                    feedback_data = "Username or password shouldn't include spaces"
                    feedback_data = FAILURE(feedback_data)
                else:
                    ## Task 2.2
                    feedback_data = user_register(cmd, users)
                    ## Task 2.2
            else:
                feedback_data = "Invalid command"
                feedback_data = FAILURE(feedback_data)
    else:
        ## Task 4
        feedback_data, login_user = login_cmds(receive_data, users, login_user)
        ## Task 4

    socket_conn.sendall(feedback_data.encode('utf-8'))
    if feedback_data == '200:disconnected':
        return False, None
    return True, login_user


## Task 1.2
## Connection establishment on server
class ClientHandler(socketserver.BaseRequestHandler):
    def handle(self):
        login_user = None
        client_address = f'{self.client_address[0]}:{self.client_address[1]}'
        
        print(f"Connection established with {client_address}")
        
        continue_flag = True
        while continue_flag:
            # Process commands in the main loop
            continue_flag, login_user = main_loop(self.request, client_address, login_user)

        print(f"Connection closed with {client_address}")

def start_server(host="localhost", port=6016):
    with socketserver.ThreadingTCPServer((host, port), ClientHandler) as server:
        print(f"Server started on {host}:{port}")
        server.serve_forever()

if __name__ == "__main__":
    start_server()
## Task 1.2
