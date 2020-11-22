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
               with open ('/home/morenomx/solucionesweb/sacvc/valoresbasicos.json', encoding='utf-8') as data_file_r: # OJO MEJORAR
                  data_fr = json.loads(data_file_r.read())

               if data_fr['PARAMETRO_TK']=='lt':
                  print('Calculando TOV')
                  timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                  nivel_medido = data_fr['TAG_VALUE']

                  idtag_lt=data_fr['IDTAG']

                  idtk=Tag.objects.get(pk=idtag_lt).id_Tk
                  


                  tov=TOV(nivel_medido, idtk)
                  instance_tov = Tag.objects.get(id_Tk= idtk, etiqueta1='TOV')

                  #print(instance_tov)
                  print(nivel_medido)

                  Valor_Actual= {"IDTAG":str(instance_tov.pk),
                  "TAG_VALUE":str(tov),
                  "TIMESTAMP":timestamp,
                  "INDEXADO": 0,
                  'PARAMETRO_TK':str(instance_tov.etiqueta1),
                  }
                  print(Valor_Actual)



               time.sleep(3)# para debugger
               iterando+=1
               print(iterando)
