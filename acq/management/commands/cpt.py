import json
from django.core.management.base import BaseCommand
from acq.models import Tk, Tag, Analogico
from acq.calculos import TOV, FloatIeee754
from datetime import datetime
import time
from django.core.files.storage import FileSystemStorage
from django.conf import settings


class Command(BaseCommand):
    help = 'help'
    def handle(self, *args, **kwargs):
       timestamp=""
       fs = FileSystemStorage(location=settings.MEDIA_ROOT+'/Data')


       # CALCULAR TOV PARTIENDO DEL NIVEL MEDIDO PROVENIENTE DEL MODULO DE ADQUISICION ACQ
       json_tmp=""
       i=0
       n=2
       iterando=0
       ruta_Data=fs.location   #RUTA DEL BUFFER DE LA DATA CRUDA#

       while i<=n:


#OBTENIENDO DATOS DEL BUFFER DATA CRUDA

               with fs.open(ruta_Data+'/Buffer_Data_Cruda.json', mode= 'r') as data_file_r:
                  data_fr = json.loads(data_file_r.read())

#INSTANCIAR EL NIVEL MEDIDO
               idtag_lt=Tag.objects.get(pk=data_fr['IDTAG'])
               REG_1=data_fr['REGISTRO_1']
               REG_2=data_fr['REGISTRO_2']
               timestamp_lt=data_fr['TIMESTAMP']
               nivel_medido=FloatIeee754(REG_1,REG_2)
               print(nivel_medido)

#NIVEL MEDIDO CONVIRTIENDO EN DATA TIPO REAL LOS REGISTROS MODBUS PROVENIENTE DEL BUFFER DATA CRUDA

               if idtag_lt.etiqueta1=='lt':
                  print('Calculando TOV')


#INSTANCIANDO EL TANQUE
                  idtk=idtag_lt.id_Tk
                  tov=TOV(nivel_medido, idtk)
#INSTANCIANDO EL TAG TOV
                  instance_tov = Tag.objects.get(id_Tk= idtk, etiqueta1='TOV')
                  timestamp_tov = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]

                  Data_basica_lt={"IDTAG":str(idtag_lt),
                  "TAG_VALUE":str(nivel_medido),
                  "TIMESTAMP":timestamp_lt,
                  "INDEXADO": 0,
                     }

                  Data_Calculada_tov  = {"IDTAG":str(instance_tov.pk),
                  "TAG_VALUE":str(tov),
                  "TIMESTAMP":timestamp_tov,
                  "INDEXADO": 0,
                  'PARAMETRO_TK':str(instance_tov.etiqueta1),
                  }
                  print(Data_basica_lt)
                  print(Data_Calculada_tov)

               time.sleep(2)# para debugger
