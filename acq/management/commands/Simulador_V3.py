from datetime import datetime
import random 
import time
import json
import socket
import sys
from umodbus import conf
from umodbus.client import tcp
from django.core.management.base import BaseCommand


class Command(BaseCommand):
    help = 'help'

    def handle(self, *args, **kwargs):
        n=500
        conf.SIGNED_VALUES = True
        print('\n' '\n'  "         SIMULADOR MODBUS DESARROLLADO POR: Ing Miguel Moreno")
        print('\n' '\n' "   Dirección IP del Esclavo Modbus: 192.168.43.143")
        print('\n' '\n' "Puerto del Esclavo Modbus: 5002")
        print('\n' '\n' "Id del Esclavo 1 Modbus 11")
        print('\n' '\n' "Dirección los registros en los Esclavo Modbus a partir del 101 ")

        i=0
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) #??
        sock.connect(('192.168.43.143', 5002))
        
        while i<n:  
  #Escribir  
          Current_Value = []
          json_temp = []
          numtags=1
          k=0
          for k in range(numtags):
            Pv=random.randint(0,1000)
            Current_Value.append(Pv)


          message1 = tcp.write_multiple_registers(slave_id = 11, starting_address = 101, values = list(Current_Value))
          escribir = tcp.send_message(message1, sock)
 
    #Leer

          message2 = tcp.read_holding_registers(slave_id =11, starting_address = 101, quantity=numtags)
          leer = tcp.send_message(message2, sock)
          print(leer)
          print(i)
          timestamp=""
          pv=0



          j=0
          while j < numtags:
             with open ('/home/morenomx/solucionesweb/sacvc/datos.json','w') as file: #abre un archivo json para escrtitura

             # file.write({"id_Tag": 9,"Timestamp": str(datetime.now()),"Pv": leer[j]})

              timestamp = str(datetime.now())
              pv = leer[j]
             #json_temp.append("id_Tag "+"9")
             #json_temp.append("Timestamp " +(str(timestamp)))
             #json_temp.append("Pv " + str(pv))
              json_temp= {"idtag":9, "Timestamp":timestamp, "Pv":pv}
             

              file.write(json.dumps(json_temp))
              file.close()
            # json_temp.append("id_Tag: 9, Timestamp:"str(datetime.now())",Pv: "str(leer[j]))
              time.sleep(1)
              j+=1
            


       # print(i)
        
          i+=1
        sock.close()
       

