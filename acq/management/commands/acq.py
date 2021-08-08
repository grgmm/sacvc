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
# from scapy.all import *


class Command(BaseCommand):
    help = 'help'

    def handle(self, *args, **kwargs):
        # No estoy seguro de su utilidad me lo copié del ejemplo.
        conf.SIGNED_VALUES = True
        slaveid = 11  # ide del esclavo 0-247 segun Modbus doc
        # puertos validos por encima de 1024 en sistemas Linux Android Unix.
        slaveport = 5002

        slaveip = '127.0.0.1'  # ip del esclavo para modbus TCP


        # declara la conexión
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

        try:
            sock.connect((slaveip, slaveport))  # realiza la conexión

        except:
            print("Sin conexión...reintentando", sys.exc_info()[0])
            pass

        print('Adquisción de Data Modbus Activa (Running)')

        n = 2  # 100 iteraciones

        # INICIALIZAR VARIABLES
        i = 1
        timestamp = ""
        Datos_Actuales = {}
        fs = FileSystemStorage(location=settings.MEDIA_ROOT + '/Data')
        ruta_Data = fs.location  # RUTA DEL BUFFER
        Current_Value = []
        json_temp = []
        k = 0
        TKS = {}
        Parametro_tk = ''
        # simula el valor medido de un transmisor (registro menos significativo) del Float IEE754
        Pv0 = 0
        Pv1 = 0

        while i <= n:
            if not Tk.objects.exists():
                print(
                    'NO HAY DATOS PARA ENCUESTAR SALIENDO DEL ADQUISIDOR ###################')
                exit()  # SALIR DEL PROGRAMA SI NO HAY TANQUES QUE ENCUESTAR
            else:
                for tk in Tk.objects.iterator():  # ITERNDO EN TANQUES EXISTENTES.
                    Data_Cruda = {'Data_Cruda': []}
                    # RECORRIENDO LOS TAGS DE CADA TANQUE
                    for tag in Tag.objects.filter(id_Tk=tk.pk).iterator():
                        # Pv0=random.randint(16384,32765)    #simula el valor medido de un transmisor (registro menos significativo) del Float IEE754
                        # Pv1=random.randint(16000,17900)    #simula el valor medido de un transmisor (registro mas significativo) del Float IEEE754
                        idtag = tag.pk  # Del mdelo Tag
                        tag_addres = int(tag.direccion_campo)-1  # Del mdelo Tag
                        # DATA PARA TRASNFERIR
                        #print(tag_addres)
                        Current_Value = [idtag, Pv0, Pv1]
                        print(Current_Value)

                       # ESCRIBIR
                        # message1 = tcp.write_multiple_registers(slave_id = slaveid, starting_address = tag_addres, values = list(Current_Value))
                        # Se construye el msj de escritura en el esclavo(SIMULACION)
                        # escribir = tcp.send_message(message1, sock) #Se envia comando de escritura con el msj al esclavo en el socket abierto.

                        # Leer
                        message2 = tcp.read_holding_registers(
                            slave_id=slaveid, starting_address=tag_addres, quantity=2)
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
                        print(Data_Cruda_Temp)

                        Data_Cruda['Data_Cruda'].append(Data_Cruda_Temp)
                        # print(Data_Cruda)
                        # datacruda=json.dumps(Data_Cruda)

                    # tk = {"IDTK":tk_instance.pk,IDTAG":str(tag_instance.pk),"INSTALACION":tk_instance.id_patioTanque.Nombre, "TIMESTAMP":timestamp,"PV0":leer[1],"PV1":leer[2], "PV_FLOAT":0.000, "UNIDAD":(Analogico_instance.Unidad),"PARAMETRO_TK":tag_instance.etiqueta1, "INDEXADO": 0}

                    # print(Datos_Actuales) PARA DEBUGGER

                    try:
                        with fs.open(ruta_Data + '/Buffer_Data_Cruda.json', mode='w') as file1:
                            # with open ('/home/morenomx/solucionesweb/sacvc/valoresbasicos.json','w') as file1: #abre un archivo json (cambiar por ruta simbólica)

                            # Data en cache
                            file1.write(json.dumps(Data_Cruda))
                    except:
                        print("Error inesperado:", sys.exc_info()[0])

                    # try:

                        # with fs.open(ruta_Data+'/Valores_Tk.json', mode= 'w') as file2:

                        # file2.write(json.dumps(Data_Cruda)) #Data en cache

                    # tk.current_data = Data_Cruda #A Base de Datos

                    # tk.save()
                    # except:
                    # print("Error inesperado:", sys.exc_info()[0])

        sock.close()  # cierra la conexión
