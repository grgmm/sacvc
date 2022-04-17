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

class acq():
    help = 'help'

    def mbtcpserver(serviceport, id_esclavo, slave_ip_address):
        comm_succes = False
        conf.SIGNED_VALUES = True
        # puertos validos por encima de 1024 en sistemas Linux Android Unix.

        # declara la conexión
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        #print(serviceport,id_esclavo,slave_ip_address)
     
        try:
            
            sock.connect((slave_ip_address, serviceport))             
            #print('Adquisción de Data Modbus Activa (Running)')
            #n = 2  # 100 iteraciones
            # INICIALIZAR VARIABLES
            #i = 1
            timestamp = ""  
            Datos_Actuales = {}
            fs = FileSystemStorage(location=settings.MEDIA_ROOT + '/Data')
            ruta_Data = fs.location  # RUTA DEL BUFFER
            Current_Value = []
            json_temp = []
            k = 0
            TKS = {}
            Parametro_tk = ''
            Pv0 = 0
            Pv1 = 0
            
            if True:
                if not Tk.objects.exists():
                        print(
                            'NO HAY DATOS PARA ENCUESTAR SALIENDO DEL ADQUISIDOR ###################')
                        exit()  # SALIR DEL PROGRAMA SI NO HAY TANQUES QUE ENCUESTAR
                else:
                        
                        for tk in Tk.objects.iterator():  # ITERANDO EN TANQUES EXISTENTES.
                            Data_Cruda = {'Data_Cruda': []}
                            # RECORRIENDO LOS TAGS DE CADA TANQUE
                            for tag in Tag.objects.filter(id_Tk=tk.pk).iterator():
                                # Pv0=random.randint(16384,32765)    #simula el valor medido de un transmisor (registro menos significativo) del Float IEE754
                                # Pv1=random.randint(16000,17900)    #simula el valor medido de un transmisor (registro mas significativo) del Float IEEE754
                                idtag = tag.pk  # Del mdelo Tag
                                tag_addres = int(tag.direccion_campo)-1  # Del mdelo Tag
                                # DATA PARA TRASNFERIR
                                Current_Value = [idtag, Pv0, Pv1]

                            # ESCRIBIR
                                # message1 = tcp.write_multiple_registers(slave_id = slaveid, starting_address = tag_addres, values = list(Current_Value))
                                # Se construye el msj de escritura en el esclavo(SIMULACION)
                                # escribir = tcp.send_message(message1, sock) #Se envia comando de escritura con el msj al esclavo en el socket abierto.

                                # Leer
                                message2 = tcp.read_holding_registers(
                                    slave_id=id_esclavo, starting_address=tag_addres, quantity=2)
                                # Construcción del msj de lectura desde el esclavo partiendo de la dirección mb configurada en el modelo Tag

                                leer = tcp.send_message(message2, sock)
                                # Se envia comando de lectura en el esclavo en el socket abierto.
                                timestamp = datetime.now().strftime(
                                    '%Y-%m-%d %H:%M:%S.%f')[:-7]
                                # id extraido del paquete transferido
                                tag_instance = Tag.objects.get(pk=idtag)

                                Data_Cruda_Temp = {'IDTAG': idtag,
                                                'REGISTRO_1': leer[0],
                                                'REGISTRO_2': leer[1],
                                                'TIMESTAMP': timestamp,
                                                'INDEXADO': False,
                                                'DIRECCIONCAMPO': tag.direccion_campo,
                                                'TAG_ADDRES':    tag_addres,

                                                }
                                #print(Data_Cruda_Temp)

                                Data_Cruda['Data_Cruda'].append(Data_Cruda_Temp)
                                # print(Data_Cruda)

                            try:
                                with fs.open(ruta_Data + '/Buffer_Data_Cruda.json', mode='w') as file1:
                                    # with open ('/home/morenomx/solucionesweb/sacvc/valoresbasicos.json','w') as file1: #abre un archivo json (cambiar por ruta simbólica)

                                    # Data en cache
                                    file1.write(json.dumps(Data_Cruda))
                            except:
                                print("Error inesperado:", sys.exc_info()[0])


            sock.close() # cierra la conexión
            comm_succes = True
            

            #while i <= n:
                
        except:
            comm_succes = False
            print("Sin conexión...reintentando", sys.exc_info()[0])
            #pass
        return(comm_succes)