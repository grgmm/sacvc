import json
from django.core.management.base import BaseCommand
from acq.models import Tk, Tag, Analogico
from acq.calculos import VOLUMENES, FloatIeee754
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
       temperatura_producto=0.0
       nivel_producto=0.0
       ruta_Data=fs.location   #RUTA DE BUFFER
       idtag_lt=0
       timestamp_lt=''
       tov=0.00
       Data_Calculada_tov={}
       Data_Calculada={}
       instance_tov={}
       Presion_tk=0.0
       ays=10.0
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
                    #time.sleep(5)

                    idtag_DC=Tag.objects.get(pk=data_fr['Data_Cruda'][jsonindice]['IDTAG']) #id tag data cruda
                    idtk_DC=idtag_DC.id_Tk


                    if Analogico.objects.filter(pk=idtag_DC).exists():

                           Analogico_DC =  Analogico.objects.get(pk=idtag_DC) #INSTANCIANDO LOS RANGOS DEL TAG
                  # for i in numpy.arange(0, 5.5, 0.5):
                    #   print(i)
                           #rango_valido_DC=numpy.arange(Analogico_DC.ValorMinimo, Analogico_DC.ValorMaximo, 0.001)

                   #print(rango_valido_DC)
                   #rango_valido_DC=range( Analogico_DC.ValorMinimo,  Analogico_DC.ValorMaximo) #INSTANCIANDO LOS RANGOS DEL TAG

                           vb_REG_1=data_fr['Data_Cruda'][jsonindice]['REGISTRO_1']
                           vb_REG_2=data_fr['Data_Cruda'][jsonindice]['REGISTRO_2']
                           vb_timestamp_DC=data_fr['Data_Cruda'][jsonindice]['TIMESTAMP']
                           vb_PV=FloatIeee754(int(vb_REG_2), int(vb_REG_1))


                   #NIVEL MEDIDO CONVIRTIENDO EN DATA TIPO REAL LOS REGISTROS MODBUS PROVENIENTE DEL BUFFER DATA CRUDA

                           if idtag_DC.etiqueta1=='lt':
                                    idtag_lt=idtag_DC
                                    nivel_producto=vb_PV
                                    idtk=idtag_DC.id_Tk

                                    volumenes=VOLUMENES(nivel_producto, idtk, ays)
                                    print(volumenes, nivel_producto)


                                    if  (nivel_producto >= Analogico_DC.ValorMinimo and  nivel_producto<=Analogico_DC.ValorMaximo):
                                    #if nivel_producto in rango_valido_DC:  OJO REVISAR NO ESTA FUNCIONANDO

                                        #print(nivel_producto, idtk, ays)

                                        try:
                                            volumenes=VOLUMENES(nivel_producto, idtk, ays)
                                            print(volumenes, nivel_producto)
                                            tov=volumenes['TOV']
                                            gsv=volumenes['NSV']
                                            nsv=volumenes['NSV']

                                            instance_tov = Tag.objects.get(id_Tk= idtk, etiqueta1='TOV')
                                            timestamp_tov = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                                            instance_gsv = Tag.objects.get(id_Tk= idtk, etiqueta1='GSV')
                                            timestamp_gsv = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                                            instance_nsv = Tag.objects.get(id_Tk= idtk, etiqueta1='NSV')
                                            timestamp_nsv = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]

                                            Data_Calculada  = {"IDTK":idtk_DC.pk,
                                                       "TANQUE":idtk_DC.Nombre,
                                                       "IDTOV":instance_tov.pk,
                                                       "IDNSV":instance_nsv.pk,
                                                       "IDGSV":instance_gsv.pk,
                                                       "TOV": str(tov),
                                                       "GSV": str(gsv),
                                                       "NSV": str(nsv),
                                                       "TIMESTAMP_TOV": timestamp_tov,
                                                       "TIMESTAMP_GSV": timestamp_gsv,
                                                       "TIMESTAMP_NSV": timestamp_nsv,
                                                       "LT":  str(nivel_producto),    #basica
                                                       "PT":  str(Presion_tk),      #basica
                                                       "TT":  str(temperatura_producto),  #basica
                                                       "AYS": str(ays),  #basica
                                                       "INDEXADO": 0,
                                                       }

                                        except:
                                            print("Error de parseo", sys.exc_info()[0], "occurred.")


                                        #print('Calculando TOV........')
                                        #print(Analogico_DC.ValorMinimo)
                                        #print(Analogico_DC.ValorMaximo)

                                        #print(nivel_producto)
                                        #print(tov)
                                        #print(nsv)

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
                                    idtag_lta=idtag_DC
                                    nivel_agua_libre=vb_PV
                                    idtk=idtag_DC.id_Tk


                           if idtag_DC.etiqueta1=='ays':
                                      idtag_ays=idtag_DC
                                      ays=vb_PV
                                      idtk=idtag_DC.id_Tk


                          #INSTANCIANDO EL TAG TOV



                               #GENERANDO BUEFFERS DE DATOS BASICOS Y DATOS CALCULADOS DE TK




                 #print(Data_Basica_lt)
                 #print(Data_Calculada_tov)

                    #with fs.open(ruta_Data+'/Buffer_Datos_Basicos.json', mode= 'w') as file1:

                          #file1.write(json.dumps(Data_Basica_lt))
               try:

                   with fs.open(ruta_Data+'/Buffer_Datos_Calculados.json', mode= 'w') as file2:

                       file2.write(json.dumps(Data_Calculada))
               except:
                    print("Error inesperado:", sys.exc_info()[0])

               tk=Tk.objects.get(pk=idtag_DC.id_Tk.pk)
               tk.current_data  = Data_Calculada #A Base de Datos

               tk.save()
