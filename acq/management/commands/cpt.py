import json
from django.core.management.base import BaseCommand
from acq.models import Tk, Tag, Analogico
from acq.calculos import TOV
from datetime import datetime
import time



class Command(BaseCommand):
    help = 'help'
    def handle(self, *args, **kwargs):

       timestamp=""

       # CALCULAR TOV PARTINDO DEL NIVEL MEDIDO PROVENIENTE DEL MODULO DE ADQUISICION ACQ
       json_tmp=""
       i=0
       n=2
       iterando=0
       while i<=n:
               with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file_r: # OJO MEJORAR
                  data_fr = json.loads(data_file_r.read())

               if data_fr['PARAMETRO_TK']=='lt':
                  print('paso')
                  timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                  nivel_medido = data_fr['PV_FLOAT']
                  tag_lt=data_fr['TAG']
                  tk=data_fr['TANQUE']
                  idtk=data_fr['IDTK']
                  tov=TOV(nivel_medido, idtk)
                  instance_tov = Tag.objects.get(id_Tk= idtk, etiqueta1='TOV')
                  #print(instance_tov)

                  json_tmp= {"TANQUE":str(tk),

                  "LT_TAG":str(tag_lt),
                  "LT_VALOR":str(nivel_medido),
                  "TOV_TAG":str(instance_tov.Nombre),
                  "TOV_DIR":str(instance_tov.direccion),
                  "TOV_VALOR":str(tov),
                  "TIMESTAMP":timestamp, "INDEXADO": 0,
                  }
                  print(json_tmp)

               time.sleep(3)# para debugger
               iterando+=1
               print(iterando)
