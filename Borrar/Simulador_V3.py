from datetime import datetime
import random 
import time
import json
import socket
import sys
from umodbus import conf
from umodbus.client import tcp

def escribir_registros():
  n=10
  conf.SIGNED_VALUES = True
  print('\n' '\n'  "         PRUEBA MODBUS DESARROLLADA POR: Ing Miguel Moreno")
  print('\n' '\n' "   Dirección IP del Esclavo Modbus: 192.168.43.143")
  print('\n' '\n' "Puerto del Esclavo Modbus: 5002")
  print('\n' '\n' "Id del Esclavo 1 Modbus 11")
  input('\n' '\n' "Dirección los registros en los Esclavo Modbus 101 y 201 ")

  i=0
  sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) #??
  sock.connect(('192.168.43.143', 5002))
  while i<n:  
  #Escribir  
    Current_Value = []

    for k in range(3):
      Pv=random.randint(0,1000)
      Current_Value.append(Pv)
     # print( Current_Value)


    message1 = tcp.write_multiple_registers(slave_id = 11, starting_address = 101, values = list(Current_Value))
    escribir = tcp.send_message(message1, sock)
 
    #Leer

    message2 = tcp.read_holding_registers(slave_id =11, starting_address = 101, quantity=3)
    leer = tcp.send_message(message2, sock)
    print(leer)
    time.sleep(1)




    with open ('datos.json','w') as file: #abre un archivo json para escrtitura

     j=0
     while j !=k:

       file.write(json.dumps({"id_Tag": 9,"Timestamp": str(datetime.now()),"Pv": leer[j]})+ "\n")

       j+=1





    i+=1
  sock.close()


  return

escribir=escribir_registros()
