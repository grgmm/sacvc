import json
import sys
from django.core.management.base import BaseCommand
from acq.models import Analogico_Hs, Analogico_Hs0, Analogico_Hs1, Analogico_Hs2, Analogico_Hs3, Analogico_Hs4, Analogico_Hs5
import time
from datetime import datetime
from datetime import timedelta




class Command(BaseCommand):
    help = 'help'

    def handle(self, *args, **kwargs):
     iterar = 1
     i = 2

     while i > iterar:

      def Gestion_Hs0(delta_t, bd_origen, bd_destino):

  
        if (bd_origen.objects.count() != 0):

          q = bd_origen.objects.all().iterator()
         

          for recorrido in q:

            objetodata=recorrido.data
            objetoindexado=objetodata['indexado'] #Extraigo el pv del json de la Bd
            print(objetoindexado)
            
            if objetoindexado==0:

    
             delt=(datetime.now()- datetime.strptime(recorrido.data['Timestamp'], '%Y-%m-%d %H:%M:%S.%f'))
     
             if (delt < delta_t):
              
              time.sleep(1)      
              bd_destino.objects.create(data = recorrido.data)


              #recorrido.update(data__indexado=1) 
              #recorrido.data.update(data__indexado=1)
              #thing.properties['color'] = 'green'
              recorrido.data['indexado']= '1'
              print(recorrido.data)
              recorrido.save()
              
                    




      def Gestion_Hs(delta_t, bd_origen, bd_destino):
  
        if (bd_origen.count() != 0):
          first_obj = bd_origen.first()    
          q = bd_origen.iterator()

          for recorrido in q:
    
            delt=(datetime.strptime(recorrido.data['Timestamp'], '%Y-%m-%d %H:%M:%S.%f')-datetime.strptime(first_obj.data['Timestamp'], '%Y-%m-%d %H:%M:%S.%f'))
     
            print(delt)
            print(delta_t)
            if (delt > delta_t):       
              print('Grabando en el hs correspondiente')
              bd_destino.create(data = recorrido.data)    
    
        qs=bd_origen.filter(data__timestamp__gte=str(delta_t))
        if (qs.count()>0):
          print('Eliminando registros Duplicados')
          qs.delete()


    
   
      hs0_delta_t = timedelta(seconds=59)
      #hs0_bd_origen  = Analogico_Hs.objects.all()
      hs0_bd_origen  = Analogico_Hs

      hs0_bd_destino = Analogico_Hs0
      Gestion_Hs0(hs0_delta_t, hs0_bd_origen, hs0_bd_destino)
      #i+=1



      hs1_bd_origen = Analogico_Hs0.objects.all()
      hs1_bd_destino = Analogico_Hs1.objects
     # Gestion_Hs(hs0_delta_t, hs1_bd_origen, hs1_bd_destino)
 
      hs2_delta_t = timedelta(minutes=59)
      hs2_bd_origen = Analogico_Hs1.objects.all()
      hs2_bd_destino = Analogico_Hs2.objects
    

      #Gestion_Hs(hs2_delta_t, hs2_bd_origen, hs2_bd_destino)
    



    
