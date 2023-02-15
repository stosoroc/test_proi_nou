import socket
import threading

            
def handle_client(client):
    while True:
        try:
            # получаем сообщение от клиента
            message = client.recv(1024).decode()
            if message == "stop server":
                client.close()
                print(f'connection with {message[:8]} closed by stop')
                break
            else:
                # выводим сообщение на экран
                print(message)
        except ConnectionResetError:
            print(f'connection with {message[:8]} closed by connection error')
            break
        
        

# создаем сокет
server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# привязываем сокет к адресу и порту
server.bind(('localhost', 12345))

# слушаем запросы
print("Server pornit!")
server.listen()

while True:
    # ждем подключение от клиента
    client, address = server.accept()
    
    client_thread = threading.Thread(target=handle_client, args=(client,))
    client_thread.start()
    # создаем отдельный поток для обработки запросов от
