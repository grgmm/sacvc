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

      iterar=1000
      Key= ''
      value =''
      i=0
      Tag_Bd=[]
      fs = FileSystemStorage(location=settings.MEDIA_ROOT+'/Data')
      ruta_Data=fs.location   #RUTA DEL BUFFER
      actualizarbd =False
      crearbd =False

      #print(ruta_Data)

      while i<=iterar:
          time.sleep(1)
          with fs.open(ruta_Data+'/Buffer_Data_Cruda.json', mode= 'r') as data_file:

              BFjson_data = json.loads(data_file.read()) #PROVIENE DEL BUFFER DATA CRUDA

              tagcount=(len(BFjson_data['Data_Cruda']))




          if Analogico_Hs.objects.all().count() !=0: #SI ESTA EN BLANCO ESCRIBE EL BUFFER DIRECTAMENTE EN BD
              Bd=Analogico_Hs.objects.all()
              BDTag_Validar=Bd.last().data




              for jsonindice in range(tagcount):# no es la forma
                #print(BFjson_data['Data_Cruda'][jsonindice]['IDTAG'] in BDTag_Validar['Data_Cruda'][jsonindice])
                #print(BFjson_data['Data_Cruda'][jsonindice]['IDTAG'], BDTag_Validar['Data_Cruda'][jsonindice] )
                #if (['IDTAG'], BFjson_data['Data_Cruda'][jsonindice]['IDTAG'] in BDTag_Validar['Data_Cruda'][jsonindice].items()):
                #for (['IDTAG'], BFjson_data['Data_Cruda'][jsonindice]['IDTAG']) in BDTag_Validar['Data_Cruda'][jsonindice].items():



                for (k, v) in BFjson_data['Data_Cruda'][jsonindice].items():
                    for (ke, va) in BDTag_Validar['Data_Cruda'][jsonindice].items():


                        if (k == 'IDTAG' and v==va and k==ke): #ojo validar
                            if BFjson_data['Data_Cruda'][jsonindice]['REGISTRO_1']==BDTag_Validar['Data_Cruda'][jsonindice]['REGISTRO_1'] and BFjson_data['Data_Cruda'][jsonindice]['REGISTRO_2']==BDTag_Validar['Data_Cruda'][jsonindice]['REGISTRO_2']:


                                actualizarbd =True
                                crearbd =False
                                break


                            else :
                                 actualizarbd=False
                                 crearbd =True
                                 break



              if actualizarbd == True and crearbd== False:
                print('Actualizando Hs')
                time.sleep(1)
                Analogico_Hs.objects.all().last().data=BFjson_data
              else:
                time.sleep(1)
                print('Creando Hs')



                Analogico_Hs.objects.create(data=BFjson_data)


          else:
            print('Creando Hs en Bd Nueva')
            Analogico_Hs.objects.create(data=BFjson_data)
