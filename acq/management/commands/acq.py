from datetime import datetime
import random 
import time
import json
import socket
import sys
from umodbus import conf
from umodbus.client import tcp
from django.core.management.base import BaseCommand
import struct
import numpy as np
from acq.models import Tk




class Command(BaseCommand):
    help = 'help'
  

    
    def handle(self, *args, **kwargs):
        def FloatIeee754(registro0=16384,registro1=16500):
          packed_string = struct.pack("ii", registro0,registro1)
          bit_number = '0'+ str(np.base_repr(registro1, base=2)) + '0' + str(np.base_repr(registro0, base=2))
          fdata = int(bit_number, 2)        
          fvalue = struct.unpack('f', struct.pack('I', fdata))[0]
       #print ('{};{}'.format(R0, R1))
       #print(bit_number)           
       #print(fdata)       
       #print(fvalue)
          return(fvalue)

        n=999 #100 iteraciones
        slaveid= 11 #ide del esclavo 0-247 segun Modbus doc
        slaveport=5002 #puertos validos por encima de 1024 en sistemas Linux Android Unix. 
        slaveip= '192.168.43.143' #ip del esclavo para modbus TCP
        i=1

        
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
          numregistros= numtags*3
          k=0
          
          for k in range(numtags):
            Pv0=random.randint(16384,32765)    #simula el valor medido de un transmisor (registro menos significativo) del Float IEE754
            Pv1=random.randint(16000,17900)    #simula el valor medido de un transmisor (registro mas significativo) del Float IEEE754
            idtag = random.randint(9,100)      #id de ese transmisor entre 9 y 100 para esta simulación 
                                               #Para simular entrada de diversos transmisores
           
            Current_Value.append(idtag)
            Current_Value.append(Pv0)
            Current_Value.append(Pv1)



            
            #se empaqueta en el arreglo Current_Value: id + Pv0 + PV1
            
         
    #Escribir
           #se requiere en formato list para el message modbus.

          message1 = tcp.write_multiple_registers(slave_id = slaveid, starting_address = 101, values = list(Current_Value))  
          #Se construye el msj de escritura un bloque de cantidad "numregistros" (esto para llenar los registros en el esclavo)
          
          escribir = tcp.send_message(message1, sock) #Se envia comando de escritura con el msj en esclavo en el sock
          # abierto.
 
   

    #Leer

          message2 = tcp.read_holding_registers(slave_id =slaveid, starting_address = 101, quantity= numregistros) 
            #Se construye el msj de lectura desde el esclavo a partir de la dirección 101 (holding) para esta simulación

          leer = tcp.send_message(message2, sock) #Se envia comando de lectura con el msj en el esclavo en el sock
          # abierto.
 
        
          timestamp=""
          pv=0



          j=0
          while j < (numregistros-1) :
             with open ('/home/morenomx/solucionesweb/sacvc/datos.json','w') as file: #abre un archivo json para 
             #escrtitura

          
              timestamp = str(datetime.now())
              
             

              R0=leer[j+1]
              R1=leer[j+2]
              print(R0)
              print(R1)
              float_value=FloatIeee754(R0,R1)
              print(float_value)

              #consttruye un json de una linea por cada tag luego sera sobrescrito por el sigueinte tag hasta terminar el ciclo
              json_temp= {"idtag":leer[j], "Timestamp":timestamp, "Pv0":leer[j+1],"Pv1":leer[j+2], "Pv_Float":float_value, "indexado": 0}


             
              file.write(json.dumps(json_temp)) #Paquete a enviar a las vistas y a BD
              file.close()
              Tk.objects.create(current_data = json_temp)
              

              
              time.sleep(1)# para debugger 90 ms
              j+=3

          i+=1
        sock.close() #cierra la conexión
       
        
   
       

