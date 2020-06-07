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
      lolo=0
      while i<=iterar:
       with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: 
         json_data = json.loads(data_file.read())
       
       id_Tag_Filter=json_data['idtag'] 
       Pv_Tag_Filter=json_data['Pv']
       Tag_Bd=[]
       
       Bdcount= Analogico_Hs.objects.count()
       if (Bdcount == 0):
         Analogico_Hs.objects.create(data = json_data)
         break #Se requiere un goto para no cerrar las iteraciones



       if Analogico_Hs.objects.filter(data__idtag=id_Tag_Filter).exists():
         Tag_Bd = Analogico_Hs.objects.filter(data__idtag=id_Tag_Filter).latest('data__Timestamp')
       
         Tag_Validar=Tag_Bd.data
         Pv_Tag_Validar=Tag_Validar['Pv'] 
         print(Pv_Tag_Validar)
         print(Pv_Tag_Filter)      
      
         if (Pv_Tag_Validar!=Pv_Tag_Filter):
           Analogico_Hs.objects.create(data = json_data)
       else:
          Analogico_Hs.objects.create(data = json_data)
       data_file.close()
       time.sleep(1)        
       i+=1

