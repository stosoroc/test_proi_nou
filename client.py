import socket
import random
import string

# создаем сокет
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# коннектимся к серверу
client.connect(('localhost', 12345))

# генерируем 8 случайных букв
random_letters = ''.join(random.choices(string.ascii_letters, k=8))

# отправляем сообщение на сервер
client.send(f'Hi {random_letters}'.encode())
print(f"Eu sunt: {random_letters}")
while True:
    # запрашиваем сообщение от пользователя
    message = input("Enter message: ")
    if message.lower() == "stop":
        break
    client.send(f'{random_letters} : {message}'.encode())
