import json
from django.core.management.base import BaseCommand
from acq.models import Tk, Tag, Analogico
from acq.calculos import TOV, FloatIeee754
from datetime import datetime
import time
from django.core.files.storage import FileSystemStorage
from django.conf import settings
import numpy
import sys

class Command(BaseCommand):
    help = 'help'
    def handle(self, *args, **kwargs):
       timestamp=""
       fs = FileSystemStorage(location=settings.MEDIA_ROOT+'/Data')

       # CALCULAR TOV PARTIENDO DEL NIVEL MEDIDO PROVENIENTE DEL MODULO DE ADQUISICION ACQ
       json_tmp=""
       i=0
       n=2
       iterando=0
       nivel_producto=0.0
       ruta_Data=fs.location   #RUTA DE BUFFER
       idtag_lt=0
       timestamp_lt=''
       tov=0.00
       Data_Basica_lt={}
       Data_Calculada_tov={}
       instance_tov={}
       while i<=n:



#OBTENIENDO DATOS DEL BUFFER DATA CRUDA

               try:
                   with fs.open(ruta_Data+'/Buffer_Data_Cruda.json', mode = 'r') as data_file_r:
                      data_fr = json.loads(data_file_r.read())
                      tagcount=(len(data_fr['Data_Cruda']))
               except:
                    print("Error inesperado:", sys.exc_info()[0])



#INSTANCIAR EL TAG CALCULANDO SU VALOR REAL IEEE754 SOLO SI ES ANALOGICO
               for jsonindice in range(tagcount):

                    idtag_DC=Tag.objects.get(pk=data_fr['Data_Cruda'][jsonindice]['IDTAG']) #id tag data cruda

                    if Analogico.objects.filter(pk=idtag_DC).exists():

                           Analogico_DC =  Analogico.objects.get(pk=idtag_DC) #INSTANCIANDO LOS RANGOS DEL TAG

                  # for i in numpy.arange(0, 5.5, 0.5):
                    #   print(i)
                           rango_valido_DC=numpy.arange(Analogico_DC.ValorMinimo, Analogico_DC.ValorMaximo, 0.001)

                   #print(rango_valido_DC)
                   #rango_valido_DC=range( Analogico_DC.ValorMinimo,  Analogico_DC.ValorMaximo) #INSTANCIANDO LOS RANGOS DEL TAG

                           vb_REG_1=data_fr['Data_Cruda'][jsonindice]['REGISTRO_1']
                           vb_REG_2=data_fr['Data_Cruda'][jsonindice]['REGISTRO_2']
                           vb_timestamp_DC=data_fr['Data_Cruda'][jsonindice]['TIMESTAMP']
                           vb_PV=FloatIeee754(int(vb_REG_1),int(vb_REG_2))




                   #NIVEL MEDIDO CONVIRTIENDO EN DATA TIPO REAL LOS REGISTROS MODBUS PROVENIENTE DEL BUFFER DATA CRUDA

                           if idtag_DC.etiqueta1=='lt':
                                    idtag_lt=idtag_DC
                                    nivel_producto=vb_PV
                                    idtk=idtag_DC.id_Tk

                                    if  (nivel_producto >= Analogico_DC.ValorMinimo and  nivel_producto<=Analogico_DC.ValorMaximo):
                                    #if nivel_producto in rango_valido_DC:  OJO REVISAR NO ESTA FUNCIONANDO
                                        tov=TOV(nivel_producto, idtk)
                                        #print('Calculando TOV........')
                                        print(Analogico_DC.ValorMinimo)
                                        print(Analogico_DC.ValorMaximo)

                                        print(nivel_producto)
                                        print(tov)
                                        instance_tov = Tag.objects.get(id_Tk= idtk, etiqueta1='TOV')
                                        timestamp_tov = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                                        Data_Calculada_tov  = {"IDTAG":str(instance_tov.pk),
                                                   "TOV":str(tov),
                                                   "LT":str(nivel_producto),
                                                   "TIMESTAMP_TOV":timestamp_tov,
                                                   "PT": str(Presion_tk),
                                                   "TT": str(temperatura_producto),
                                                   "INDEXADO": 0,
                                                   }
                                    else:
                                        print('VARIABLE BASICA FUERA DE RANGOS........')





                           if idtag_DC.etiqueta1=='pt':
                                    idtag_pt=idtag_DC
                                    Presion_tk=vb_PV
                                    idtk=idtag_DC.id_Tk



                           if idtag_DC.etiqueta1=='tt':
                                    idtag_tt=idtag_DC
                                    temperatura_producto=vb_PV
                                    idtk=idtag_DC.id_Tk


                           if idtag_DC.etiqueta1=='lta':
                                    idtag_tt=idtag_DC
                                    nivel_agua_libre=vb_PV
                                    idtk=idtag_DC.id_Tk








                          #INSTANCIANDO EL TAG TOV



                               #GENERANDO BUEFFERS DE DATOS BASICOS Y DATOS CALCULADOS DE TK



                    Data_Basica_lt={
                                 }



                 #print(Data_Basica_lt)
                 #print(Data_Calculada_tov)

                    #with fs.open(ruta_Data+'/Buffer_Datos_Basicos.json', mode= 'w') as file1:

                          #file1.write(json.dumps(Data_Basica_lt))
               try:

                   with fs.open(ruta_Data+'/Buffer_Datos_Calculados.json', mode= 'w') as file2:

                       file2.write(json.dumps(Data_Calculada_tov))
               except:
                    print("Error inesperado:", sys.exc_info()[0])
