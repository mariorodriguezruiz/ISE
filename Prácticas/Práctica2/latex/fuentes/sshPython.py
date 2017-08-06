#!usr/bin/python

import os
import sys 

nuevo = sys.argv[1]

os.chdir("/etc/ssh/") 
f = open("sshd_config",'r') 
chain = f.read() 

print "Cambiando el puerto de ssh..."
chain = chain.replace("Port 22", "Port " + nuevo)
f.close()

otro = open("/etc/ssh/sshd_config",'w') 
otro.write(chain) 
print "Puerto ssh modificado. Su nuevo valor es ", nuevo

print "Reinicio del servicio ssh para efectuar cambios..."
os.system('service sshd restart')
otro.close()
