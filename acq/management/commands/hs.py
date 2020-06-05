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
        
        idtagfilter=json_data['idtag']
        Pvtagfilter=json_data['Pv']
        Tag_Bd=[]
        
        #print(idtagfilter)

       # Analogico_Hs.objects.filter(data__idtag=idtagfilter)
      #  Analogico_Hs.objects.latest('data_idtag', 'idtagfilter')
        #print(todos)
        Analogico_Hs.objects.create(data = json_data) #BORRAR

        Tag_Bd=Analogico_Hs.objects.filter(data__idtag=idtagfilter).latest('data__Timestamp')
        Tag_Validar=Tag_Bd.data
      #  print(Tag_Validar)
        Pv_Tag_Validar=Tag_Validar['Pv']
        print(Pv_Tag_Validar)
        print(Pvtagfilter)


      
       # print(bdtag.[data.'Pv'])
               # print(lolo)
        #if (json_data['Pv']=bdtag.data['Pv']):

        if (Pv_Tag_Validar!=Pvtagfilter):
         Analogico_Hs.objects.create(data = json_data)
        data_file.close()
       time.sleep(1)        
       i+=1

