import socket
server = socket.socket(socket.AF_INET6,socket.SOCK_STREAM)
server.bind(("2a00:4802:d0e:6200:44ef:d8d9:f112:f703",9191))
server.listen()
while True:
    try:
        client,addr = server.accept()
        while True:
            command=client.recv(1024).decode()
            if command == "idk":
                client.send("idk ehter".encode())
            else:
                print(command)
    except ConnectionResetError:
        continue
