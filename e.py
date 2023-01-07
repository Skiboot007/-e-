import socket
import colorama
colorama.init()
ip = "192.158.0.34"
client = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
client.connect((ip,9999))
print(colorama.Fore.LIGHTCYAN_EX+"""
 _______  __   __  _______  _______  _______    _______  _______  ___      _______  ___   _______ 
|       ||  | |  ||       ||       ||       |  |       ||       ||   |    |       ||   | |       |
|    ___||  |_|  ||   _   ||  _____||_     _|  |  _____||    _  ||   |    |   _   ||   | |_     _|
|   | __ |       ||  | |  || |_____   |   |    | |_____ |   |_| ||   |    |  | |  ||   |   |   |  
|   ||  ||       ||  |_|  ||_____  |  |   |    |_____  ||    ___||   |___ |  |_|  ||   |   |   |  
|   |_| ||   _   ||       | _____| |  |   |     _____| ||   |    |       ||       ||   |   |   |  
|_______||__| |__||_______||_______|  |___|    |_______||___|    |_______||_______||___|   |___|                                                                                          
""")
while True:
    print(f"{colorama.Fore.LIGHTMAGENTA_EX}[{colorama.Fore.LIGHTGREEN_EX}+{colorama.Fore.LIGHTMAGENTA_EX}] {colorama.Fore.LIGHTCYAN_EX}please input command",end="")
    k=input("=>")
    if k=="idk":
        client.send(k.encode())
        print(client.recv(1024).decode())
