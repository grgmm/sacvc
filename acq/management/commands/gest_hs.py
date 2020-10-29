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

     while i > iterar: #(ciclo infinito)

      def Gestion_Hs0(delta_t, bd_origen, bd_destino): #FUNCION PARA POBLADO AUTOMATICO DE TABLA DE SEGUNDOS

  
        if (bd_origen.objects.count() != 0):

          q = bd_origen.objects.all().iterator()
         

          for recorrido in q:

            objetodata=recorrido.data
            objetoindexado=objetodata['INDEXADO'] #Exraigo el estado de la bandera "indexado"
            
            
            if objetoindexado==0: #solo si no ha sido indexado/copiado

    
             delt=(datetime.now()- datetime.strptime(recorrido.data['TIMESTAMP'], '%Y-%m-%d %H:%M:%S.%f')) #tiempo actual del sistema- 
             #tiempo del tag actual
     
             if (delt < delta_t):
              
              time.sleep(1)      
              bd_destino.objects.create(data = recorrido.data)

             
              recorrido.data['INDEXADO']= '1' #activa la bandera en la tabla de origen 
              #para no duplicar registros en la sigiente tabla (mejorar)             
              
              recorrido.save() #guarda el cambio


      def Gestion_Hs(delta_t, bd_origen, bd_destino): #FUNCION PARA POBLADO AUTOMATICO DE TABLA DE SEGUNDOS
        
  
        if (bd_origen.count() != 0):
          first_obj = bd_origen.first()    
          q = bd_origen.iterator()

          for recorrido in q:
            objetoindexado=first_obj.data['INDEXADO'] #Exraigo el estado de la bander "indexado"
           
            
            if objetoindexado==0: #solo si no ha sido indexado/copiado    
             delt=(datetime.strptime(recorrido.data['TIMESTAMP'], '%Y-%m-%d %H:%M:%S.%f')-datetime.strptime(first_obj.data['TIMESTAMP'], '%Y-%m-%d %H:%M:%S.%f'))
              
            
            
             if (delt > delta_t):       
              print('Grabando en el hs correspondiente')
              bd_destino.create(data = first_obj.data)
              first_obj.data['INDEXADO']= '1' #activa la bandera en la tabla de origen 
              #para no duplicar registros en la sigiente tabla (mejorar)
              first_obj.save()
              print(delt)
              print(delta_t)
        
        
        qs=bd_origen.filter(data__INDEXADO='1')
        if (qs.count()>0):
          print('Eliminando registros Duplicados')
          qs.delete()
    
   
      hs0_delta_t = timedelta(seconds=59) 
      #hs0_bd_origen  = Analogico_Hs.objects.all()
      hs0_bd_origen  = Analogico_Hs
      hs0_bd_destino = Analogico_Hs0      
      Gestion_Hs0(hs0_delta_t, hs0_bd_origen, hs0_bd_destino) #llenado de tabla de segundos hs0
      



      hs1_bd_origen = Analogico_Hs0.objects.all()
      hs1_bd_destino = Analogico_Hs1.objects
      Gestion_Hs(hs0_delta_t, hs1_bd_origen, hs1_bd_destino) #llenado de tabla de minutos hs1, copiandolos
      #desde la tabla de segundos una vez cumplido 60 segundos de permanencia, luego elimninadolos de dicha tabla

      hs2_delta_t = timedelta(minutes=59)
      hs2_bd_origen = Analogico_Hs1.objects.all()
      hs2_bd_destino = Analogico_Hs2.objects
      Gestion_Hs(hs2_delta_t, hs2_bd_origen, hs2_bd_destino) #llenado de tabla de horas hs2, copiandolos
      #desde la tabla de minutos una vez cumplido 60 minutos de permanencia, luego elimninadolos de dicha tabla

      hs3_delta_t = timedelta(hours=23)
      hs3_bd_origen = Analogico_Hs2.objects.all()
      hs3_bd_destino = Analogico_Hs3.objects
      Gestion_Hs(hs3_delta_t, hs3_bd_origen, hs3_bd_destino) #llenado de tabla de dias hs3, copiandolos
      #desde la tabla de horas una vez cumplido 24 horas de permanencia, luego elimninadolos de dicha tabla

      hs4_delta_t = timedelta(days=29)
      hs4_bd_origen = Analogico_Hs3.objects.all()
      hs4_bd_destino = Analogico_Hs4.objects
      Gestion_Hs(hs4_delta_t, hs4_bd_origen, hs4_bd_destino) #llenado de tabla de meses hs4, copiandolos
      #desde la tabla de dias una vez cumplido 30 dias de permanencia, luego elimninadolos de dicha tabla



      hs5_delta_t = timedelta(days=365)
      hs5_bd_origen = Analogico_Hs4.objects.all()
      hs5_bd_destino = Analogico_Hs5.objects
      Gestion_Hs(hs5_delta_t, hs5_bd_origen, hs5_bd_destino) #llenado de tabla de Años hs5, copiandolos
      #desde la tabla de meses una vez cumplido 12 meses de permanencia, luego elimninadolos de dicha tabla


 
 
     



    
