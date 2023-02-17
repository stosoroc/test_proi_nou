import socket
import threading
import logging


# создаем объект для логирования
logging.basicConfig(filename='chat.log', level=logging.INFO)

HOST = 'localhost'
PORT = 12345

# список клиентов и их ники
clients = {}
nicknames = {}
            
def handle_client(conn, addr):
    print(f'Connected by {addr}')
    # отправляем клиенту всю переписку из файла
    with open('chat.log', 'r') as f:
        for line in f:
            conn.send(line.encode())
    # запрашиваем у клиента его ник
    conn.send('Enter your nickname: '.encode())
    nickname = conn.recv(1024).decode().strip()
    # добавляем клиента в список
    clients[conn] = nickname
    nicknames[nickname] = conn
    # отправляем всем клиентам сообщение о присоединении нового клиента
    broadcast(f'{nickname} joined the chat\n'.encode(), conn)
    while True:
        try:
            data = conn.recv(1024)
            # если клиент отправил сообщение "stop server", закрываем соединение
            if data.decode().strip() == 'stop server':
                conn.send('Server is shutting down...'.encode())
                conn.close()
                del clients[conn]
                broadcast(f'{nickname} left the chat\n'.encode(), conn)
                break
            elif data:
                # добавляем сообщение клиента в лог
                logging.info(f'{clients[conn]}: {data.decode()}')
                # отправляем сообщение всем клиентам, кроме отправителя
                broadcast(data, conn, exclude_self=True)
        except ConnectionResetError:
            print(f'connection with {nickname} closed by connection error')
            break
        
# функция для отправки сообщений всем клиентам
def broadcast(message, sender_conn, exclude_self=False):
    for conn in clients:
        if not exclude_self or conn != sender_conn:
            conn.send(message)        

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.bind((HOST, PORT))
    s.listen()
    print(f'Server started at {HOST}:{PORT}')
    while True:
        conn, addr = s.accept()
        # создаем отдельный поток для обработки сообщений клиента
        t = threading.Thread(target=handle_client, args=(conn, addr))
        t.start()