import json
import sys
#from .models import Analogico_Hs
from django.core.management.base import BaseCommand
from acq.models import Analogico_Hs
import time



class Command(BaseCommand):
    help = 'help'

    def handle(self, *args, **kwargs):

      iterar=1999
      i=0
      lolo=0
      Tag_Bd=[]
      q = Analogico_Hs.objects.all().iterator()
      for t in q:
       print(t)
       print(q)
       

      while i<=iterar:
       with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: 
         json_data = json.loads(data_file.read())
       
         id_Tag_Filter=json_data['idtag'] 
         Pv_Tag_Filter=json_data['Pv0']
         Pv_Tag_Filter=json_data['Pv1'] #Extraigo el pv del json de entrada
         Pv_Tag_Filter=json_data['Pv_Float']
         
       
       Bdcount= Analogico_Hs.objects.count()
       

       if (Bdcount != 0): #BD NO ESTA VACIA
        if Analogico_Hs.objects.filter(data__idtag=id_Tag_Filter).exists(): #Si existe tags en bd con el id del json de entrada
         Tag_Bd = Analogico_Hs.objects.filter(data__idtag=id_Tag_Filter).latest('data__Timestamp') #se posiciona en el ultimo
       
         Tag_Validar=Tag_Bd.data 
         Pv_Tag_Validar=Tag_Validar['Pv_Float'] #Extraigo el pv del json de la Bd
         
         #LOGS DE LA APP

         if (Pv_Tag_Validar!=Pv_Tag_Filter): #si los Pv son diferentes creo el de entrada
           print('Grabando en BD id existente PV nuevo')     
           Analogico_Hs.objects.create(data = json_data)
         else:
           print('Sin Guardar: TAG y PV Guardado en Bd recientemente')

        else: #BD con Data pero no contiene el id entrante
          print('Grabando en BD no vacia: id no exitente y PV nuevo')     
          Analogico_Hs.objects.create(data = json_data)
           
       else: #BD EN BLANCO (VACIA)
          
          print('Grabando en BD Vacia id no existente y PV nuevo')     
          Analogico_Hs.objects.create(data = json_data)
          #data_file.close()      
       
       time.sleep(1)   #para deugger 900 ms
       i+=1