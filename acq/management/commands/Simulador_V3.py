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
        n=99 #100 iteraciones
        slaveid= 11 #ide del esclavo 0-247 segun Modbus doc
        slaveport=5002 #puertos validos por encima de 1024 en sistemas Linux Android Unix. 
        slaveip= '192.168.43.143' #ip del esclavo para modbus TCP
        i=0
        
        conf.SIGNED_VALUES = True # No estoy seguro de su utilidad me lo copié del ejemplo.
        print('\n' '\n'  "         SIMULADOR MODBUS DESARROLLADO POR: Ing Miguel Moreno")
        print('\n' '\n' "   Dirección IP del Esclavo Modbus: 192.168.43.143")
        print('\n' '\n' "Puerto del Esclavo Modbus: 5002")
        print('\n' '\n' "Id del Esclavo 1 Modbus 11")
        print('\n' '\n' "Dirección los registros en los Esclavo Modbus a partir del 101 ")
        #Mensajes de encabezado en consola Python informativo.

        
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) #declara la conexión
        sock.connect((slaveip, slaveport)) #realiza la conexión
        
        while i<=n:  
    
          Current_Value = []
          json_temp = []
          numtags=3
          numregistros= numtags*2
          k=0
          for k in range(numtags):
            Pv=random.randint(0,1000)    #simula la entrada de un Pv de un transmisor
            idtag = random.randint(9,11) #simula la entrada de un id de ese transmisor
           
            Current_Value.append(idtag)
            #se empaqueta en el arreglo Current_Value
          
           # print(k) 
            Current_Value.append(Pv)    
            #se empaqueta en el arreglo Current_Value id  y Pv
            
            print(Current_Value)          #consola para debugger
          # Current_Value = valores de id (entre 0-9) y Pv (entre 0-1000) de 3 tags simulados.

    #Escribir
           #se requiere en formato list para el message modbus.

          message1 = tcp.write_multiple_registers(slave_id = slaveid, starting_address = 101, values = list(Current_Value))  
          #Se construye el msj de escritura (esto para llenar los registros en el esclavo) simulación

          escribir = tcp.send_message(message1, sock) #Se envia comando de escritura en esclavo en elsock abierto.
 
    #Leer

          message2 = tcp.read_holding_registers(slave_id =slaveid, starting_address = 101, quantity= numregistros) 
            #Se construye el msj de lectura desde el esclavo
          leer = tcp.send_message(message2, sock)
        
          timestamp=""
          pv=0



          j=0
          while j < (numregistros-1) :
             with open ('/home/morenomx/solucionesweb/sacvc/datos.json','w') as file: #abre un archivo json para escrtitura

          
              timestamp = str(datetime.now())
              
             


              
              json_temp= {"idtag":leer[j], "Timestamp":timestamp, "Pv":leer[j+1]}           

             
              file.write(json.dumps(json_temp))
              file.close()
              
              time.sleep(1)
              j+=2 #de dos en dos por que cada Tag ocupa dos registro Id y Pv
          i+=1
        sock.close() #cierra la conexión
        
   
       

