from django.shortcuts import render
from django.http import HttpResponse
import socket
import json
import random
from umodbus import conf
from umodbus.client import tcp
import time
from datetime import datetime





def index(request):
 n=10
 conf.SIGNED_VALUES = True
 print('\n' '\n'  "         PRUEBA MODBUS DESARROLLADA POR: Ing Miguel Moreno")
 print('\n' '\n' "   Dirección IP del Esclavo Modbus: 192.168.43.143")
 print('\n' '\n' "Puerto del Esclavo Modbus: 5002")
 print('\n' '\n' "Id del Esclavo 1 Modbus 11")
 print('\n' '\n' "Dirección los registros en los Esclavo Modbus 101 en adelante")
 i=0
 ite=3
 sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) #??
 sock.connect(('192.168.43.143', 5002))
 while i<n:
  Current_Value = []
  for k in range(ite):
   Pv=random.randint(0,1000)
   Current_Value.append(Pv)
      
  message1 = tcp.write_multiple_registers(slave_id = 11, starting_address = 101, values = list(Current_Value))
  escribir = tcp.send_message(message1, sock)
  message2 = tcp.read_holding_registers(slave_id =11, starting_address = 101, quantity=ite)
  leer = tcp.send_message(message2, sock)
  print(leer)
  time.sleep(1)
  with open ('/home/morenomx/solucionesweb/sacvc/Backend/datos.json','w') as file: #abre un archivo json para escrtitura
   j=0
   while j < ite:
    file.write(json.dumps({"id_Tag": 9,"Timestamp": str(datetime.now()),"Pv": leer[j]})+ "\n")
    j+=1
  print(i)  
  i+=1
 sock.close()
 return HttpResponse('hola MM')