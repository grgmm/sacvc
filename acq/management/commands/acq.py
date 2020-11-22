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
from acq.models import Tk, Tag, Analogico


class Command(BaseCommand):
    help = 'help'

    def handle(self, *args, **kwargs):
        def FloatIeee754(registro0=16384,registro1=16500):
          packed_string = struct.pack("ii", registro0,registro1)
          bit_number = '0'+ str(np.base_repr(registro1, base=2)) + '0' + str(np.base_repr(registro0, base=2))
          fdata = int(bit_number, 2)
          fvalue = struct.unpack('f', struct.pack('I', fdata))[0]
          fvalue1= round(fvalue,3)
          return(fvalue1)

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

          numtags=Tag.objects.count()
          if numtags==0:
              print('NO HAY DATOS PARA ENCUESTAR SALIENDO DEL ADQUISIDOR')
              exit()

          k=0

          tags_disponibles =Tag.objects.all().iterator()

          for t in tags_disponibles:
            if t.TipoVariable != 'C': #solo para variables no calculadas(básicas)


                Pv0=random.randint(16384,32765)    #simula el valor medido de un transmisor (registro menos significativo) del Float IEE754
                Pv1=random.randint(16000,17900)    #simula el valor medido de un transmisor (registro mas significativo) del Float IEEE754

                idtag = t.pk  #De las Base de datos de Tags
                tag_addres = int(t.direccion)


                Current_Value=[idtag,Pv0,Pv1]



        #Escribir
               #se requiere en formato list para el message modbus.

                message1 = tcp.write_multiple_registers(slave_id = slaveid, starting_address = tag_addres, values = list(Current_Value))
              #Se construye el msj de escritura

                escribir = tcp.send_message(message1, sock) #Se envia comando de escritura con el msj en esclavo en el socket abierto.


        #Leer

                message2 = tcp.read_holding_registers(slave_id =slaveid, starting_address = tag_addres  , quantity= 3)
                #Se construye el msj de lectura desde el esclavo a partir de la dirección del tag configurada en Bd



                leer = tcp.send_message(message2, sock) #Se envia comando de lectura con el msj en el esclavo en el socket abierto.


                timestamp=""
                pv=0

                timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                R0=leer[1]
                R1=leer[2]
                float_value=FloatIeee754(R0,R1)



              #consttruye un json de una linea por cada tag luego sera sobrescrito.
                if float_value <= 19.9:
                    tag_instance = Tag.objects.get(pk=leer[0]) #idtag

                    tk_instance = Tk.objects.get(pk= tag_instance.id_Tk.pk) #idtk

                    Analogico_instance =  Analogico.objects.get(pk=tag_instance.pk)

                  #print(Analogico_instance.Unidad)


                    json_temp = {"IDTAG":str(tag_instance.pk),"TAG":str(tag_instance.Nombre),"DIRECCION":tag_instance.direccion,"IDTK":tk_instance.pk,"TANQUE":str(tk_instance.Nombre), "INSTALACION":tk_instance.id_patioTanque.Nombre, "TIMESTAMP":timestamp,"PV0":leer[1],"PV1":leer[2], "PV_FLOAT":float_value, "UNIDAD":(Analogico_instance.Unidad),"PARAMETRO_TK":tag_instance.etiqueta1, "INDEXADO": 0}



                    Valor_Actual={'IDTAG':json_temp['IDTAG'],
                    'TAG_VALUE':json_temp['PV_FLOAT'],
                    'TIMESTAMP':json_temp['TIMESTAMP'],
                    "INDEXADO": 0,
                    'PARAMETRO_TK':json_temp['PARAMETRO_TK'],
                    }


                    print(Valor_Actual)

                    with open ('/home/morenomx/solucionesweb/sacvc/valoresbasicos.json','w') as file1: #abre un archivo json (cambiar por ruta simbólica)

                      file1.write(json.dumps(Valor_Actual)) #Data en cache


                    with open ('/home/morenomx/solucionesweb/sacvc/datos.json','w') as file2: #abre un archivo json (cambiar por ruta simbólica)

                      file2.write(json.dumps(json_temp)) #Data en cache

                    tk_instance.current_data = json_temp #A Base de Datos

                    tk_instance.save()
                    #print(tk_instance.current_data)

                    time.sleep(2)# para debugger


          i+=1
        sock.close() #cierra la conexión
