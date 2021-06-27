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
#from scapy.all import *

class Command(BaseCommand):
    help = 'help'

    def handle(self, *args, **kwargs):
        conf.SIGNED_VALUES = True # No estoy seguro de su utilidad me lo copié del ejemplo.
        print('\n' '\n'  "         SIMULADOR MODBUS DESARROLLADO POR: Ing Miguel Moreno")
        print('\n' '\n' "   Dirección IP del Esclavo Modbus: 192.168.43.143")
        print('\n' '\n' "Puerto del Esclavo Modbus: 5002")
        print('\n' '\n' "Id del Esclavo 1 Modbus 11")
        print('\n' '\n' "Dirección los registros en los Esclavo Modbus a partir del 101 ")
        #Mensajes de encabezado en consola Python informativo.
        slaveid= 11 #ide del esclavo 0-247 segun Modbus doc
        slaveport=5002 #puertos validos por encima de 1024 en sistemas Linux Android Unix.
        slaveip= '192.168.1.53  ' #ip del esclavo para modbus TCP

        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) #declara la conexión


        try:
            sock.connect((slaveip, slaveport)) #realiza la conexión

        except:
             print("Sin conexión...reintentando", sys.exc_info()[0])
             pass

        print('Adquisción de Data Modbus Activa (Running)')

        n=2 #100 iteraciones

        #INICIALIZAR VARIABLES
        i=1
        timestamp=""
        Datos_Actuales={}
        fs = FileSystemStorage(location=settings.MEDIA_ROOT+'/Data')
        ruta_Data=fs.location   #RUTA DEL BUFFER
        Current_Value = []
        json_temp = []
        k=0
        TKS={}
        Parametro_tk= ''
        Pv0=0    #simula el valor medido de un transmisor (registro menos significativo) del Float IEE754
        Pv1=0

        while i<=n:
            if not Tk.objects.exists():
                print('NO HAY DATOS PARA ENCUESTAR SALIENDO DEL ADQUISIDOR ###################')
                exit() #SALIR DEL PROGRAMA SI NO HAY TANQUES QUE ENCUESTAR
            else:
              for tk in Tk.objects.iterator(): #ITERNDO EN TANQUES EXISTENTES.
                Data_Cruda={'Data_Cruda':[] }
                for tag in Tag.objects.filter(id_Tk=tk.pk).iterator():#RECORRIENDO LOS TAGS DE CADA TANQUE
                    #Pv0=random.randint(16384,32765)    #simula el valor medido de un transmisor (registro menos significativo) del Float IEE754
                    #Pv1=random.randint(16000,17900)    #simula el valor medido de un transmisor (registro mas significativo) del Float IEEE754
                    idtag = tag.pk  #Del mdelo Tag
                    tag_addres = int(tag.direccion_campo)-1#Del mdelo Tag
                    Current_Value=[idtag,Pv0,Pv1] #DATA PARA TRASNFERIR

                   #ESCRIBIR
                    #message1 = tcp.write_multiple_registers(slave_id = slaveid, starting_address = tag_addres, values = list(Current_Value))
                    #Se construye el msj de escritura en el esclavo(SIMULACION)
                    #escribir = tcp.send_message(message1, sock) #Se envia comando de escritura con el msj al esclavo en el socket abierto.


                    #Leer
                    message2 = tcp.read_holding_registers(slave_id =slaveid, starting_address = tag_addres  , quantity= 2)
                    #Construcción del msj de lectura desde el esclavo partiendo de la dirección mb configurada en el modelo Tag
                    leer = tcp.send_message(message2, sock)
                    #Se envia comando de lectura en el esclavo en el socket abierto.
                    timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                    tag_instance =  Tag.objects.get(pk=idtag) #id extraido del paquete transferido


                    Data_Cruda_Temp={'IDTAG':idtag,
                    'REGISTRO_1':leer[0],
                    'REGISTRO_2':leer[1],
                    'TIMESTAMP': timestamp,
                    'INDEXADO':False
                    }

                    Data_Cruda['Data_Cruda'].append(Data_Cruda_Temp)
                    #print(Data_Cruda)
                    #datacruda=json.dumps(Data_Cruda)


                #tk = {"IDTK":tk_instance.pk,IDTAG":str(tag_instance.pk),"INSTALACION":tk_instance.id_patioTanque.Nombre, "TIMESTAMP":timestamp,"PV0":leer[1],"PV1":leer[2], "PV_FLOAT":0.000, "UNIDAD":(Analogico_instance.Unidad),"PARAMETRO_TK":tag_instance.etiqueta1, "INDEXADO": 0}

                #print(Datos_Actuales) PARA DEBUGGER

                try:
                    with fs.open(ruta_Data+'/Buffer_Data_Cruda.json', mode= 'w') as file1:
                #with open ('/home/morenomx/solucionesweb/sacvc/valoresbasicos.json','w') as file1: #abre un archivo json (cambiar por ruta simbólica)

                            file1.write(json.dumps(Data_Cruda)) #Data en cache
                except:
                     print("Error inesperado:", sys.exc_info()[0])

                #try:

                    #with fs.open(ruta_Data+'/Valores_Tk.json', mode= 'w') as file2:

                            #file2.write(json.dumps(Data_Cruda)) #Data en cache



                #tk.current_data = Data_Cruda #A Base de Datos

                #tk.save()
                #except:
                #print("Error inesperado:", sys.exc_info()[0])


        sock.close() #cierra la conexión
