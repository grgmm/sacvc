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
       Data_tanques={}
       Data_tanques_temp={}
       Data_Cruda={'Data_Cruda':[] }
       instance_tov = 0
       instance_nsv = 0
       instance_gsv = 0
       idtag_pt= 0
       idtag_tt= 0
       idtag_lta= 0
       idtag_ays= 0
       idtag_lt= 0
       tov= 0
       gsv= 0
       nsv= 0
       nivel_agua_libre= ''
       timestamp_pt = ''
       timestamp_tt = ''
       timestamp_lta = ''
       timestamp_ays = ''
       timestamp_tov = ''
       timestamp_gsv = ''
       timestamp_nsv = ''

       print('MÓDULO DE CALCULO DE VOLUMENES ACTIVO, REVISAR SALIDA EN: /Data/Buffer_Datos_Calculados.json' )

       while i<=n:


#OBTENIENDO DATOS DEL BUFFER DATA CRUDA

               try:
                   with fs.open(ruta_Data+'/Buffer_Data_Cruda.json', mode = 'r') as data_file_r:
                      data_fr = json.loads(data_file_r.read())
                      tagcount=(len(data_fr['Data_Cruda']))
               except:
                    print("Error inesperado:", sys.exc_info()[0])


#INSTANCIAR EL TAG CALCULANDO SU VALOR REAL IEEE754 SOLO SI ES ANALOGICO
               for recorrido in range(tagcount):

                    idtag_DC = Tag.objects.get(pk=data_fr['Data_Cruda'][recorrido]['IDTAG']) #id tag data cruda
                    vb_REG_1=data_fr['Data_Cruda'][recorrido]['REGISTRO_1']
                    vb_REG_2=data_fr['Data_Cruda'][recorrido]['REGISTRO_2']
                    vb_timestamp_DC=data_fr['Data_Cruda'][recorrido]['TIMESTAMP']
                    vb_PV=FloatIeee754(int(vb_REG_2), int(vb_REG_1))

                    idtk = idtag_DC.id_Tk

                    #Tags= Analogico.objects.all()
                    #tag_ins=Tags.filter(pk__exact=idtag_DC)
                    tag_ins = Analogico.objects.get(pk=idtag_DC.pk)

                    if (tag_ins.etiqueta1=='pt'):

                         Presion_tk = vb_PV
                         idtag_pt = tag_ins.pk
                         timestam_pt = vb_timestamp_DC






                    if (tag_ins.etiqueta1=='tt'):

                         temperatura_producto=vb_PV
                         idtag_tt = tag_ins.pk
                         timestam_tt = vb_timestamp_DC





                    if (tag_ins.etiqueta1=='lta'):
                              # if idtag_DC.etiqueta1=='lta':
                         nivel_agua_libre=vb_PV
                         idtag_lta = tag_ins.pk
                         timestam_lta = vb_timestamp_DC



                    if (tag_ins.etiqueta1=='ays'):
                               #if idtag_DC.etiqueta1=='ays':
                         ays=vb_PV
                         idtag_ays = tag_ins.pk
                         timestam_ays = vb_timestamp_DC



                    if (tag_ins.etiqueta1=='lt'):

                               #if idtag_DC.etiqueta1=='lt':
                         nivel_producto=vb_PV
                         idtag_lt = tag_ins.pk
                         timestam_lt = vb_timestamp_DC


                         if  (nivel_producto >= tag_ins.ValorMinimo and  nivel_producto <= tag_ins.ValorMaximo):


                                            try:
                                                time.sleep(1)

                                                volumenes=VOLUMENES(nivel_producto,ays)
                                                tov=volumenes['TOV']
                                                gsv=volumenes['GSV']
                                                nsv=volumenes['NSV']

                                                instance_tov = Tag.objects.get(id_Tk= tag_ins.id_Tk.pk, etiqueta1='TOV')
                                                timestamp_tov = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                                                instance_gsv = Tag.objects.get(id_Tk= tag_ins.id_Tk.pk, etiqueta1='GSV')
                                                timestamp_gsv = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                                                instance_nsv = Tag.objects.get(id_Tk= tag_ins.id_Tk.pk, etiqueta1='NSV')
                                                timestamp_nsv = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]


                                                #print(Data_Calculada)




                                            except:
                                                print("Error de parseo", sys.exc_info()[0], "occurred.")





                         else:
                                            print('VARIABLE BASICA FUERA DE RANGOS........')


               Data_Calculada  = {                "TANQUE":tag_ins.id_Tk,
                                                       "IDTOV":instance_tov.pk,
                                                       "IDNSV":instance_nsv.pk,
                                                       "IDGSV":instance_gsv.pk,
                                                       "IDLT" : idtag_lt,
                                                       "IDPT" : idtag_pt,
                                                       "IDTT" : idtag_tt,
                                                       "IDLTA" : idtag_lta,
                                                       "IDAYS" : idtag_ays,
                                                       "TOV": str(tov),
                                                       "GSV": str(gsv),
                                                       "NSV": str(nsv),
                                                       "LT":str(nivel_producto),
                                                       "PT":str(Presion_tk),
                                                       "TT":str(temperatura_producto),
                                                       "LTA":str(nivel_agua_libre),
                                                       "AYS":str(ays),
                                                       "TIMESTAMP_lt":  timestamp_lt,
                                                       "TIMESTAMP_pt":  timestamp_pt,
                                                       "TIMESTAMP_tt":  timestamp_tt,
                                                       "TIMESTAMP_lta": timestamp_lta,
                                                       "TIMESTAMP_ays": timestamp_ays,
                                                       "TIMESTAMP_TOV": timestamp_tov,
                                                       "TIMESTAMP_GSV": timestamp_gsv,
                                                       "TIMESTAMP_NSV": timestamp_nsv,
                                                       "INDEXADO": 0,
                                                       }


               print(Data_Calculada)
               Data_tanques_temp={tag_ins.id_Tk.pk:Data_Calculada}
               Data_tanques.update(Data_tanques_temp)
                    #print(Data_tanques)



               try:

                   with fs.open(ruta_Data+'/Buffer_Datos_Calculados.json', mode= 'w') as file2:

                            file2.write(json.dumps(Data_tanques)) #A archivo json
               except:
                   print("Error inesperado:", sys.exc_info()[0])


               tk=Tk.objects.get(pk=tag_ins.id_Tk.pk)
               tk.current_data  = Data_Calculada #A Base de Datos

               tk.save()
                           #idtk_DC_int=Analogico_DC.id_Tk

                           #print(Data_tanques)

#INSTANCIANDO LOS RANGOS DEL TAG
