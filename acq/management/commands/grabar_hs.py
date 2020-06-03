import json
import sys
#from .models import Analogico_Hs
from django.core.management.base import BaseCommand
from acq.models import Analogico_Hs
import time



class Command(BaseCommand):
    help = 'help'

    def handle(self, *args, **kwargs):     

      iterar=999
      i=0
      while i<=iterar:
       with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json 
        json_data = json.loads(data_file.read())       
        Analogico_Hs.objects.create(data = json_data)
        data_file.close()
       time.sleep(1)        
       i+=1

