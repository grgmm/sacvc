import json
from django.core.management.base import BaseCommand
from acq.models import Tk, Tag, Analogico
from acq.calculos import VOLUMENES, FloatIeee754, Alarmas, Escalamiento
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

# -----------------------------------------------------------#
#INICIALIZANDO VARIABLES
       i=0
       n=2
       #iterando=0
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
       nsv_normal= ''
       nsv_urgente=''
       nsv_critica= ''
       ays_normal=''
       ays_critica=''
       tov_unidad= ''
       ays_urgente=''
       gsv_unidad=''
       nsv_unidad=''
       porcentaje=''
       tov_normal= ''
       tov_urgente= ''
       tov_critica= ''
       tov_urgente= ''
       gsv_urgente= ''
       gsv_critica=''
       gsv_urgente= ''
       gsv_normal= ''
       tagcount= 1
       Data_Calculada  = {                                    "TANQUE":        "",
                                                              "LT":            "",
                                                              "LT_PORCENTAJE": "",
                                                              "IDTOV":         "",
                                                              "IDNSV":         "",
                                                              "IDGSV":         "",
                                                              "IDLT" :         "",
                                                              "IDPT" :         "",
                                                              "IDTT" :         "",
                                                              "IDLTA":         "",
                                                              "IDAYS":         "",
                                                              "TOV":           "",
                                                              "TOV_UNIDAD":    "",
                                                              "GSV":           "",
                                                              "GSV_UNIDAD":    "",
                                                              "NSV":           "",
                                                              "NSV_UNIDAD":    "",
                                                              "LT_UNIDAD":     "",
                                                              "VALORMAXIMO":   "",
                                                              "VALORMINIMO":   "",
                                                              "PT":            "",
                                                              "TT":            "",
                                                              "LTA":           "",
                                                              "AYS":           "",
                                                              "LT_NORMAL":     "",
                                                              "LT_URGENTE":    "",
                                                              "LT_CRITICA":    "",
                                                              "PT_NORMAL":     "",
                                                              "PT_URGENTE":    "",
                                                              "PT_CRITICA":    "",
                                                              "TT_NORMAL":     "",
                                                              "TT_URGENTE":    "",
                                                              "TT_CRITICA":    "",
                                                              "LTA_NORMAL":    "",
                                                              "LTA_URGENTE":   "",
                                                              "LTA_CRITICA":   "",
                                                              "AYS_NORMAL":    "",
                                                              "AYS_URGENTE":   "",
                                                              "AYS_CRITICA":   "",
                                                              "TOV_NORMAL":    "",
                                                              "TOV_URGENTE":   "",
                                                              "TOV_CRITICA":   "",
                                                              "NSV_NORMAL":    "",
                                                              "NSV_URGENTE":   "",
                                                              "NSV_CRITICA":   "",
                                                              "GSV_NORMAL":    "",
                                                              "GSV_URGENTE":   "",
                                                              "GSV_CRITICA":   "",
                                                              "TIMESTAMP_lt":  "",
                                                              "TIMESTAMP_pt":  "",
                                                              "TIMESTAMP_tt":  "",
                                                              "TIMESTAMP_lta": "",
                                                              "TIMESTAMP_ays": "",
                                                              "TIMESTAMP_TOV": "",
                                                              "TIMESTAMP_GSV": "",
                                                              "TIMESTAMP_NSV": "",
                                                              "INDEXADO":      0,
                                                              }





       print('MÓDULO DE CALCULO DE VOLUMENES ACTIVO, REVISAR SALIDA EN: /Data/Buffer_Datos_Calculados.json' )

       while i<=n: #MEJORAR


#OBTENIENDO DATOS DEL BUFFER DATA CRUDA

               try:
                   with fs.open(ruta_Data+'/Buffer_Data_Cruda.json', mode = 'r') as data_file_r:
                      data_fr = json.loads(data_file_r.read())
                      tagcount=(len(data_fr['Data_Cruda']))
               except:
                    print("Error inesperado  leyendo data cruda:", sys.exc_info()[0])


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


                    if (tag_ins.etiqueta1=='pt') :

                         Presion_tk = vb_PV
                         idtag_pt = tag_ins.pk
                         timestamp_pt = vb_timestamp_DC

                         pt_estado=Alarmas(Presion_tk, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)
                         pt_normal=pt_estado['normal']
                         pt_urgente=pt_estado['urgente']
                         pt_critica=pt_estado['critica']


                    if (tag_ins.etiqueta1=='tt'):

                         temperatura_producto=vb_PV
                         idtag_tt = tag_ins.pk
                         timestamp_tt = vb_timestamp_DC

                         tt_estado=Alarmas(temperatura_producto, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)
                         tt_normal=tt_estado['normal']
                         tt_urgente=tt_estado['urgente']
                         tt_critica=tt_estado['critica']

                    if (tag_ins.etiqueta1=='lta'):
                              # if idtag_DC.etiqueta1=='lta':
                         nivel_agua_libre=vb_PV
                         idtag_lta = tag_ins.pk
                         timestamp_lta = vb_timestamp_DC

                         lta_estado=Alarmas(nivel_agua_libre, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)
                         lta_normal=lta_estado['normal']
                         lta_urgente=lta_estado['urgente']
                         lta_critica=lta_estado['critica']

                    if (tag_ins.etiqueta1=='ays'):
                               #if idtag_DC.etiqueta1=='ays':
                         ays=vb_PV
                         idtag_ays = tag_ins.pk
                         timestamp_ays = vb_timestamp_DC

                         ays_estado=Alarmas(ays, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)
                         ays_normal=ays_estado['normal']
                         ays_urgente=ays_estado['urgente']
                         ays_critica=ays_estado['critica']


                    if (tag_ins.etiqueta1=='lt'):

                         nivel_producto=vb_PV
                         idtag_lt = tag_ins.pk
                         lt_unidad = tag_ins.Unidad
                         timestamp_lt = vb_timestamp_DC

                         lt_estado=Alarmas(nivel_producto, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)
                         lt_normal=lt_estado['normal']
                         lt_urgente=lt_estado['urgente']
                         lt_critica=lt_estado['critica']
                         print(lt_estado)


                         try:
                             time.sleep(1)

                             volumenes=VOLUMENES(nivel_producto,ays)
                             print(volumenes)
                             tov = volumenes['TOV']
                             gsv = volumenes['GSV']
                             nsv = volumenes['NSV']

                             porcentaje = Escalamiento(nivel_producto, tag_ins.ValorMinimo, tag_ins.ValorMaximo)
                             print(porcentaje)




                             instance_tov = Analogico.objects.get(id_Tk = tag_ins.id_Tk.pk, etiqueta1='TOV')


                             timestamp_tov = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                             tov_estado=Alarmas(tov, instance_tov.LL, instance_tov.L, instance_tov.H, instance_tov.HH)
                             tov_normal=tov_estado['normal']
                             tov_urgente=tov_estado['urgente']
                             tov_critica=tov_estado['critica']
                             tov_unidad = instance_tov.Unidad




                             instance_gsv = Analogico.objects.get(id_Tk= tag_ins.id_Tk.pk, etiqueta1='GSV')
                             timestamp_gsv = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                             gsv_estado=Alarmas(gsv, instance_gsv.LL, instance_gsv.L, instance_gsv.H, instance_gsv.HH)
                             gsv_normal=gsv_estado['normal']
                             gsv_urgente=gsv_estado['urgente']
                             gsv_critica=gsv_estado['critica']
                             gsv_unidad = instance_gsv.Unidad


                             instance_nsv = Analogico.objects.get(id_Tk= tag_ins.id_Tk.pk, etiqueta1='NSV')
                             timestamp_nsv = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                             nsv_estado=Alarmas(nsv, instance_nsv.LL, instance_nsv.L, instance_nsv.H, instance_nsv.HH)
                             nsv_normal=nsv_estado['normal']
                             nsv_urgente=nsv_estado['urgente']
                             nsv_critica=nsv_estado['critica']
                             nsv_unidad = instance_nsv.Unidad
                             Data_Calculada  = {                "TANQUE": tag_ins.id_Tk.Nombre, #OJO CORREGIR PARA QUE SALGA EL NOMBRE
                                                                     "LT":    str(nivel_producto),
                                                                     "LT_PORCENTAJE": str(porcentaje),
                                                                     "IDTOV": instance_tov.pk,
                                                                     "IDNSV": instance_nsv.pk,
                                                                     "IDGSV": instance_gsv.pk,
                                                                     "IDLT" : idtag_lt,
                                                                     "IDPT" : idtag_pt,
                                                                     "IDTT" : idtag_tt,
                                                                     "IDLTA": idtag_lta,
                                                                     "IDAYS": idtag_ays,
                                                                     "TOV":   str(tov),
                                                                     "TOV_UNIDAD":    tov_unidad ,
                                                                     "GSV":   str(gsv),
                                                                     "GSV_UNIDAD":    gsv_unidad ,
                                                                     "NSV":   str(nsv),
                                                                     "NSV_UNIDAD":    nsv_unidad ,
                                                                     "LT_UNIDAD":    lt_unidad ,
                                                                     "VALORMAXIMO": tag_ins.ValorMaximo,
                                                                     "VALORMINIMO": tag_ins.ValorMinimo,
                                                                     "PT":    str(Presion_tk),
                                                                     "TT":    str(temperatura_producto),
                                                                     "LTA":   str(nivel_agua_libre),
                                                                     "AYS":   str(ays),
                                                                     "LT_NORMAL":     lt_normal,
                                                                     "LT_URGENTE":    lt_urgente,
                                                                     "LT_CRITICA":    lt_critica,
                                                                     "PT_NORMAL":     pt_normal,
                                                                     "PT_URGENTE":    pt_urgente,
                                                                     "PT_CRITICA":    pt_critica,
                                                                     "TT_NORMAL":     tt_normal,
                                                                     "TT_URGENTE":    tt_urgente,
                                                                     "TT_CRITICA":    tt_critica,
                                                                     "LTA_NORMAL":    lta_normal,
                                                                     "LTA_URGENTE":   lta_urgente,
                                                                     "LTA_CRITICA":   lta_critica,
                                                                     "AYS_NORMAL":    ays_normal,
                                                                     "AYS_URGENTE":   ays_urgente,
                                                                     "AYS_CRITICA":   ays_critica,
                                                                     "TOV_NORMAL":    tov_normal,
                                                                     "TOV_URGENTE":   tov_urgente,
                                                                     "TOV_CRITICA":   tov_critica,
                                                                     "NSV_NORMAL":    nsv_normal,
                                                                     "NSV_URGENTE":   nsv_urgente,
                                                                     "NSV_CRITICA":   nsv_critica,
                                                                     "GSV_NORMAL":    gsv_normal,
                                                                     "GSV_URGENTE":   gsv_urgente,
                                                                     "GSV_CRITICA":   gsv_critica,
                                                                     "TIMESTAMP_lt":  timestamp_lt,
                                                                     "TIMESTAMP_pt":  timestamp_pt,
                                                                     "TIMESTAMP_tt":  timestamp_tt,
                                                                     "TIMESTAMP_lta": timestamp_lta,
                                                                     "TIMESTAMP_ays": timestamp_ays,
                                                                     "TIMESTAMP_TOV": timestamp_tov,
                                                                     "TIMESTAMP_GSV": timestamp_gsv,
                                                                     "TIMESTAMP_NSV": timestamp_nsv,
                                                                     "INDEXADO":  0,
                                                                     }


                         except:
                             print("Error de parseo", sys.exc_info()[0], "occurred.")



                         if  (nivel_producto >= tag_ins.ValorMinimo and  nivel_producto <= tag_ins.ValorMaximo):
                            print('CALCULANDO VOLUMENES TANQUE',  Data_Calculada['TANQUE'] )

                         else:
                            print('NIVEL DE PRODUCTO FUERA DE RANGOS EN TANQUE:', Data_Calculada['TANQUE'])


               Data_tanques_temp={tag_ins.id_Tk.pk:Data_Calculada}
               Data_tanques.update(Data_tanques_temp)
               #print(Data_tanques)


               try:

                   with fs.open(ruta_Data+'/Buffer_Datos_Calculados.json', mode= 'w') as file2:

                            file2.write(json.dumps(Data_tanques)) #A archivo json
               except:
                   print("Error inesperado escribiendo Data calculada:", sys.exc_info()[0])


               tk=Tk.objects.get(pk=tag_ins.id_Tk.pk)
               tk.current_data  = Data_Calculada #A Base de Datos

               tk.save()
                           #idtk_DC_int=Analogico_DC.id_Tk


#INSTANCIANDO LOS RANGOS DEL TAG
