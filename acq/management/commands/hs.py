import json
import sys
#from .models import Analogico_Hs
from django.core.management.base import BaseCommand
from acq.models import Analogico_Hs
import time
from django.core.files.storage import FileSystemStorage
from django.conf import settings


class Command(BaseCommand):
    help = 'help'

    def handle(self, *args, **kwargs):

      iterar=1999
      i=0
      lolo=0
      Tag_Bd=[]
      q = Analogico_Hs.objects.all().iterator()
      fs = FileSystemStorage(location=settings.MEDIA_ROOT+'/Data')
      ruta_Data=fs.location   #RUTA DEL BUFFER

      for t in q:
       print(t)
       print(q)

      while i<=iterar:
       #with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file:  #ojo mejorar
        #with fs.open(ruta_Data+'/Buffer_Data_Cruda.json'

       with fs.open(ruta_Data+'/Buffer_Datos_Basicos.json', mode= 'r') as data_file:

         json_data = json.loads(data_file.read())

         id_Tag_Filter=json_data['IDTAG']

         Pv_Tag_Filter=json_data['TAG_VALUE']


       Bdcount= Analogico_Hs.objects.count()


       if (Bdcount != 0): #BD NO ESTA VACIA
        if Analogico_Hs.objects.filter(data__idtag=id_Tag_Filter).exists(): #Si existe tags en bd con el id del json de entrada
         Tag_Bd = Analogico_Hs.objects.filter(data__idtag=id_Tag_Filter).latest('data__TIMESTAMP') #se posiciona en el ultimo

         Tag_Validar=Tag_Bd.data
         Pv_Tag_Validar=Tag_Validar['TAG_VALUE'] #Extraigo el pv del json de la Bd

         #LOGS DE LA APP

         if (Pv_Tag_Validar!=Pv_Tag_Filter): #si los Pv son diferentes creo el de entrada
           print('Grabando en BD id existente PV nuevo')
           Analogico_Hs.objects.create(data = json_data)
         else:
           print('Sin Guardar: TAG Guardado en Bd recientemente')

        else: #BD con Data pero no contiene el id entrante
          print('Grabando en BD no vacia: entrada no existente')
          Analogico_Hs.objects.create(data = json_data)

       else: #BD EN BLANCO (VACIA)

          print('Grabando en BD sin data previa')
          Analogico_Hs.objects.create(data = json_data)
          #data_file.close()

       time.sleep(3)   #para deugger 900 ms
       i+=1
