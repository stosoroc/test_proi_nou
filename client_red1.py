import socket
import random
import string
import threading

host = 'localhost'
port = 12345

# генерируем 8 случайных букв
random_letters = ''.join(random.choices(string.ascii_letters, k=8))    


# создаем сокет
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# коннектимся к серверу
client.connect((host, port))
client.send(f'Hi {random_letters}'.encode())


def handle_server_message(msg):
    msg_parts = msg.split(': ')
    if len(msg_parts) == 3:
        name, text = msg_parts[1], msg_parts[2]
        print(f"{name}: {text}")
    else:
        print(msg)


# получаем все сообщения, которые были отправлены до текущего момента
#data = client.recv(1024).decode()
#handle_server_message(data)
# for d in data:
#     handle_server_message(d)


def receive_messages():
    global client
    while True:
        try:
            message = client.recv(1024).decode()
            handle_server_message(message)
        except:
            print("An error occurred!")
            client.close()
            break
        

def send_messages():
    global client
    global random_letters
    #client.send(f'Hi {random_letters}'.encode())
    while True:
        message = input("Enter message: ")
        if message == 'stop':
            #client.send(f'{random_letters} : {message}'.encode())
            break
        client.send(f'{random_letters} : {message}'.encode())

# отправляем сообщение на сервер
print(f"Eu sunt: {random_letters}")

# создаем отдельный поток для приема сообщений от сервера
receive_thread = threading.Thread(target=receive_messages)
receive_thread.start() 

send_thread = threading.Thread(target=send_messages)
send_thread.start()
    
# закрываем сокет
client.close()