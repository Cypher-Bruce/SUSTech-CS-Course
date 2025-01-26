import hmac
import os
import socket
import hashlib
import re
import random
import ast
import fileinput

host = "localhost"
port = 6016
user_inf_txt = 'users.txt'

login_commands = [
    '?',
    'help',
    'exit',
    'logout',
    'changepwd {newpassword}',
    'sum [a] [b] ...',
    'sub [a] [b]',
    'multiply [a] [b] ...',
    'divide [a] [b]'
]


def SUCCESS(message):
    """
    This function is designed to be easy to test, so do not modify it
    """
    return '200:' + message


def FAILURE(message):
    """
    This function is designed to be easy to test, so do not modify it
    """
    return '400:' + message


def ntlm_hash_func(password):
    """
    This function is used to encrypt passwords by the MD5 algorithm
    """
    # 1. Convert password to hexadecimal format
    hex_password = ''.join(format(ord(char), '02x') for char in password)

    # 2. Unicode encoding of hexadecimal passwords
    unicode_password = hex_password.encode('utf-16le')

    # 3. The MD5 digest algorithm is used to Hash the Unicode encoded data
    md5_hasher = hashlib.md5()
    md5_hasher.update(unicode_password)

    # Returns the MD5 Hash
    return md5_hasher.hexdigest()


def connection_establish(ip_p):
    """
    Task 1.1 Correctly separate the IP address from the port number in the string
    Returns the socket object of the connected server when the socket server address pointed to by IP:port is available
    Otherwise, an error message is given
    :param ip_p: str 'IP:port'
    :return socket_client: socket.socket() or None
    :return information: str 'success' or error information
    """
    ip_port = ip_p.split(':')   
    if len(ip_port) != 2:
        return None, FAILURE("Invalid IP:port format") 
        # This already rules out ipv6, since it has multiple colons
    
    ip = ip_port[0]
    port = ip_port[1]

    # Port validation
    try:
        port = int(port)
        if not 1 <= port <= 65535:
            return None, FAILURE(f"Invalid port number: {port} not in range 1-65535")
    except ValueError:
        return None, FAILURE(f"Invalid port number: expected integer but got {port}")
    
    # IP validation
    if ip != 'localhost':
        try:
            socket.inet_aton(ip)
        except socket.error:
            return None, FAILURE(f"Invalid IP address: {ip}")
    
    # Connection establishment
    try:
        socket_client = socket.socket(socket.AF_INET, socket.SOCK_STREAM) # IPv4, TCP
        socket_client.connect((ip, port))
        return socket_client, SUCCESS("Connection established")
    except socket.error as e:
        return None, FAILURE(f"Connection failed: {e}")
    

def load_users(user_records_txt):
    """
    Task 2.1 Load saved user information (username and password)
    :param user_records_txt: a txt file containing username and password records
    :return users: dict {'username':'password'}
    """
    if not os.path.exists(user_records_txt):
        with open(user_records_txt, 'w') as f:
            f.write(str(dict()))

    users = {}
    with fileinput.input(files=(user_records_txt)) as f:
        for line in f:
            users.update(ast.literal_eval(line.strip()))

    return users


def user_register(cmd, users):
    """
    Task 2.2 Register command processing
    :param cmd: Instruction string
    :param users: The dict to hold information about all users
    :return feedback message: str
    """
    username = cmd[1]
    encrypted_password = cmd[2]

    if username in users:
        return FAILURE("User already exists")
    else:
        new_user = {username: encrypted_password}
        users.update(new_user)
        with open(user_inf_txt, 'w') as f:
            f.write(str(users))
        return SUCCESS("User registered successfully")

def login_authentication(conn, cmd, users):
    """
    Task 2.3 Login authentication
        You can simply use password comparison for authentication (Task 2.3 basic score)
        It can also be implemented according to the NTLM certification process to obtain Task 3.2 and 3.5 scores
    :param conn: socket connection to the client
    :param cmd: Instruction string
    :param users: The dict to hold information about all users
    :return: feedback message: str, login_user: str
    """
    username = cmd[1]
    encrypted_password = cmd[2]

    if username not in users:
        return FAILURE("User does not exist"), None
    elif users[username] != encrypted_password:
        return FAILURE("Password incorrect"), None
    
    challenge = generate_challenge()
    conn.send(challenge)

    client_response = conn.recv(1024)
    expected_response = calculate_response(encrypted_password, challenge)
    if client_response == expected_response:
        return SUCCESS("Login successful"), username
    else:
        return FAILURE("Incorrect challenge response"), None

def server_message_encrypt(message):
    """
    Task 3.1 Determine whether the command is "login", "register", or "changepwd",
    If so, it encrypts the password in the command and returns the encrypted message and Password
    Otherwise, the original message and None are returned
    :param message: str message sent to server:
    :return encrypted message: str, encrypted password: str
    """
    cmd = message.split(' ')
    if cmd[0] in ['login', 'register']:
        if len(cmd) < 3:
            return message, None
        else:
            encrypted_password = ntlm_hash_func(cmd[2])
            cmd[2] = encrypted_password
            return " ".join(cmd), encrypted_password
    elif cmd[0] == 'changepwd':
        if len(cmd) < 2:
            return message, None
        else:
            encrypted_password = ntlm_hash_func(cmd[1])
            cmd[1] = encrypted_password
            return " ".join(cmd), encrypted_password
    else:
        return message, None

def generate_challenge():
    """
    Task 3.2
    :return information: bytes random bytes as challenge message
    """
    return os.urandom(8)


def calculate_response(ntlm_hash, challenge):
    """
    Task 3.3
    :param ntlm_hash: str encrypted password
    :param challenge: bytes random bytes as challenge message
    :return expected response
    """
    return hmac.new(ntlm_hash.encode(), challenge, hashlib.sha256).digest()
    

def server_response(server, password_hash):
    """
    Task 3.4 Receives the server response and determines whether the message returned by the server is an authentication challenge.
    If it is, the challenge will be authenticated with the encrypted password, and the authentication information will be returned to the server to obtain the login result
    Otherwise, the original message is returned
    :param server: socket server
    :param password_hash: encrypted password
    :return server response: str
    """
    response = server.recv(1024)
    try:
        decoded_response = response.decode('utf-8')
        if decoded_response.startswith(('200:', '400:')):
            return response
        else:
            challenge_response = calculate_response(password_hash, response)
            server.send(challenge_response)
            return server.recv(1024)
    except UnicodeDecodeError:
        challenge_response = calculate_response(password_hash, response)
        server.send(challenge_response)
        return server.recv(1024)


def login_cmds(receive_data, users, login_user):
    """
    Task 4 Command processing after login
    :param receive_data: Received user commands
    :param users: The dict to hold information about all users
    :param login_user: The logged-in user
    :return feedback message: str, login user: str
    """

    if receive_data == '?' or receive_data == 'help':
        feedback_data = 'Available commands: \n\t' + '\n\t'.join(login_commands)
        return SUCCESS(feedback_data), login_user

    cmd = receive_data.split(' ')
    if cmd[0] == 'sum':
        if len(cmd) < 3:
            return FAILURE("Please enter at least two numbers"), login_user
        else:
            try:
                result = sum([float(i) for i in cmd[1:]])
                return SUCCESS(str(result)), login_user
            except ValueError:
                return FAILURE("Please enter valid numbers"), login_user
            
    elif cmd[0] == 'multiply':
        if len(cmd) < 3:
            return FAILURE("Please enter at least two numbers"), login_user
        else:
            try:
                result = 1
                for i in cmd[1:]:
                    result *= float(i)
                return SUCCESS(str(result)), login_user
            except ValueError:
                return FAILURE("Please enter valid numbers"), login_user
            
    elif cmd[0] == 'subtract' or cmd[0] == 'sub':
        if len(cmd) != 3:
            return FAILURE("Please enter two numbers"), login_user
        else:
            try:
                result = float(cmd[1]) - float(cmd[2])
                return SUCCESS(str(result)), login_user
            except ValueError:
                return FAILURE("Please enter valid numbers"), login_user
            
    elif cmd[0] == 'divide':
        if len(cmd) != 3:
            return FAILURE("Please enter two numbers"), login_user
        else:
            try:
                result = float(cmd[1]) / float(cmd[2])
                return SUCCESS(str(result)), login_user
            except ValueError:
                return FAILURE("Please enter valid numbers"), login_user
            except ZeroDivisionError:
                return FAILURE("Cannot divide by zero"), login_user
            
    elif cmd[0] == 'changepwd':
        if len(cmd) < 2:
            return FAILURE("Please enter the new password"), login_user
        elif len(cmd) > 2:
            return FAILURE("Password cannot contain spaces"), login_user
        else:
            if users[login_user] == cmd[1]:
                return FAILURE("New password cannot be the same as the old one"), login_user
            else:
                users[login_user] = cmd[1]
                with open(user_inf_txt, 'w') as f:
                    f.write(str(users))
                return SUCCESS("Password changed successfully"), login_user
            
    elif cmd[0] == 'exit' and len(cmd) == 1:
        return SUCCESS("disconnected"), None
    
    elif cmd[0] == 'logout' and len(cmd) == 1:
        return SUCCESS("Logged out"), None
    
    else:
        return FAILURE("Invalid command"), login_user
            