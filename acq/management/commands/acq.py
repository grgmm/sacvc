from datetime import datetime
import random
import time
import json
import socket
import sys
from umodbus import conf
from umodbus.client import tcp
from django.core.management.base import BaseCommand
import numpy as np
from acq.models import Tk, Tag, Analogico
from django.core.files.storage import FileSystemStorage
from django.conf import settings

class Command(BaseCommand):
    help = 'help'
    def handle(self, *args, **kwargs):
        n=999 #100 iteraciones
        slaveid= 11 #ide del esclavo 0-247 segun Modbus doc
        slaveport=5002 #puertos validos por encima de 1024 en sistemas Linux Android Unix.
        slaveip= '192.168.43.143' #ip del esclavo para modbus TCP
        i=1
        timestamp=""

        numtags=Tag.objects.count()
        tags=Tag.objects.all()
        filtro_Tags_acq=''
        if numtags==0:
            print('NO HAY DATOS PARA ENCUESTAR SALIENDO DEL ADQUISIDOR ###################')
            exit()
        else:

            filtro_Tags_acq = Tag.objects.filter(Habilitar=True, TipoVariable= 'B') #ENCUESTAR SOLO VARIABLES BASICAS HABILITADAS EN BD
            if filtro_Tags_acq.exists()==False:
                print('NO HAY DATOS PARA ENCUESTAR SALIENDO DEL ADQUISIDOR ###################')
                exit()
            #print(filtro_Tags_acq.exists())

        conf.SIGNED_VALUES = True # No estoy seguro de su utilidad me lo copié del ejemplo.
        print('\n' '\n'  "         SIMULADOR MODBUS DESARROLLADO POR: Ing Miguel Moreno")
        print('\n' '\n' "   Dirección IP del Esclavo Modbus: 192.168.43.143")
        print('\n' '\n' "Puerto del Esclavo Modbus: 5002")
        print('\n' '\n' "Id del Esclavo 1 Modbus 11")
        print('\n' '\n' "Dirección los registros en los Esclavo Modbus a partir del 101 ")
        #Mensajes de encabezado en consola Python informativo.


        fs = FileSystemStorage(location=settings.MEDIA_ROOT+'/Data')

        ruta_Data=fs.location   #RUTA DEL BUFFER DE LA DATA CRUDA#

        #ABRIR CONEXION SOCKET
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) #declara la conexión
        sock.connect((slaveip, slaveport)) #realiza la conexión

        while i<=n:
          Current_Value = []
          json_temp = []
          k=0
          for t in filtro_Tags_acq:


            Pv0=random.randint(16384,32765)    #simula el valor medido de un transmisor (registro menos significativo) del Float IEE754
            Pv1=random.randint(16000,17900)    #simula el valor medido de un transmisor (registro mas significativo) del Float IEEE754
            idtag = t.pk  #De las Base de datos de Tags
            tag_addres = int(t.direccion)

            Current_Value=[idtag,Pv0,Pv1] #MENSAJE CREADO
            print(Current_Value)

    #Escribir
               #se requiere en formato list para el message modbus.

            message1 = tcp.write_multiple_registers(slave_id = slaveid, starting_address = tag_addres, values = list(Current_Value))
          #Se construye el msj de escritura

            escribir = tcp.send_message(message1, sock) #Se envia comando de escritura con el msj al esclavo en el socket abierto.

    #Leer
            message2 = tcp.read_holding_registers(slave_id =slaveid, starting_address = tag_addres  , quantity= 3)
            #Se construye el msj de lectura desde el esclavo a partir de la dirección del tag configurado en Bd habilitado ara encuesta y ue nose ade tipo calculado
            leer = tcp.send_message(message2, sock) #Se envia comando de lectura con el msj en el esclavo en el socket abierto.
            pv=0

            timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
            R0=leer[1]
            R1=leer[2]


          #consttruye un json de una linea por cada tag luego sera sobrescrito.

            tag_instance = Tag.objects.get(pk=leer[0]) #idtag

            tk_instance = Tk.objects.get(pk= tag_instance.id_Tk.pk) #idtk

            Analogico_instance =  Analogico.objects.get(pk=tag_instance.pk)

            json_temp = {"IDTAG":str(tag_instance.pk),"TAG":str(tag_instance.Nombre),"DIRECCION":tag_instance.direccion,"IDTK":tk_instance.pk,"TANQUE":str(tk_instance.Nombre), "INSTALACION":tk_instance.id_patioTanque.Nombre, "TIMESTAMP":timestamp,"PV0":leer[1],"PV1":leer[2], "PV_FLOAT":0.000, "UNIDAD":(Analogico_instance.Unidad),"PARAMETRO_TK":tag_instance.etiqueta1, "INDEXADO": 0}

            Data_Cruda={'IDTAG':leer[0],
            'REGISTRO_1':leer[1],
            'REGISTRO_2':leer[2],
            'TIMESTAMP': timestamp,
            }

            with fs.open(ruta_Data+'/Buffer_Data_Cruda.json', mode= 'w') as file1:
            #with open ('/home/morenomx/solucionesweb/sacvc/valoresbasicos.json','w') as file1: #abre un archivo json (cambiar por ruta simbólica)

              file1.write(json.dumps(Data_Cruda)) #Data en cache


            with fs.open(ruta_Data+'/datos.json', mode= 'w') as file2:

            #with open ('/home/morenomx/solucionesweb/sacvc/datos.json','w') as file2: #abre un archivo json (cambiar por ruta simbólica)

              file2.write(json.dumps(json_temp)) #Data en cache

            tk_instance.current_data = json_temp #A Base de Datos

            tk_instance.save()
            #print(tk_instance.current_data)

            time.sleep(1)# para debugger

          #print(i)
          i+=1
        sock.close() #cierra la conexión
