from datetime import datetime
import random 
import time
import json
import socket
import sys
from umodbus import conf
from umodbus.client import tcp

def leer_registros():
  n=100
  conf.SIGNED_VALUES = True
  print('\n' '\n'  "         PRUEBA MODBUS DESARROLLADA POR: Ing Miguel Moreno")
  print('\n' '\n' "   Dirección IP del Esclavo Modbus: 192.168.43.143")
  print('\n' '\n' "Puerto del Esclavo Modbus: 5002")
  print('\n' '\n' "Id del Esclavo 1 Modbus 11")
  input('\n' '\n' "Dirección los registros en los Esclavo Modbus 101 y 201 ")
#Requeired_Value = int(input('\n' '\n' "Valor Requerido "))
  #sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  #sock.connect(('192.168.43.214', 5002))
  i=0
  sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) #??
  sock.connect(('192.168.43.143', 5002))
  while i<n:    
    Current_Value1=random.randint(0,1000)
    Current_Value2=random.randint(0,1000)
    message1 = tcp.write_single_register(slave_id = 11, address = 101, value = Current_Value1)
    message2 = tcp.write_single_register(slave_id = 11, address = 201, value = Current_Value2)
    response1 = tcp.send_message(message1, sock)
    response2 = tcp.send_message(message2, sock)
    print(response1)
    print(response2)
    time.sleep(1)
    i+=1
  sock.close()



  return

leer=leer_registros()
