import json
from django.core.management.base import BaseCommand
from acq.models import Tk, Tag, Analogico, Tct
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
       nsv_alarma= ''
       tov_alarma= ''
       gsv_alarma= ''
       tov_alarma= ''
       ays_alarma=''
       gsv_unidad=''
       nsv_unidad=''
       porcentaje=''
       data_fr= ''
       tagcount= 1
       idtag_DC=1
       tt_unidad = ''
       pt_unidad = ''
       lta_unidad = ''
       ays_unidad = ''
       Data_tanques_pt, Data_tanques_tt,Data_tanques_lta, Data_tanques_ays, Data_tanque_lt = {},{},{},{},{}

       Data_tanques={}




       print('MÓDULO DE CALCULO DE VOLUMENES ACTIVO, REVISAR SALIDA EN: /Data/Buffer_Datos_Calculados.json' )

       while i<=n: #MEJORAR


#OBTENIENDO DATOS DEL BUFFER DATA CRUDA
               time.sleep(1)

               try:
                   with fs.open(ruta_Data+'/Buffer_Data_Cruda.json', mode = 'r') as data_file_r:
                      data_fr = json.loads(data_file_r.read())
                      tagcount=(len(data_fr['Data_Cruda']))
               except:
                      print("Error inesperado  leyendo data cruda:", sys.exc_info()[0])
                      continue

               for recorrido in range(tagcount):
                   idtag = data_fr['Data_Cruda'][recorrido]['IDTAG']
                   vb_REG_1=data_fr['Data_Cruda'][recorrido]['REGISTRO_1']
                   vb_REG_2=data_fr['Data_Cruda'][recorrido]['REGISTRO_2']
                   vb_timestamp_DC=data_fr['Data_Cruda'][recorrido]['TIMESTAMP']
                   vb_PV=FloatIeee754(int(vb_REG_2), int(vb_REG_1))
                   print(vb_PV)



           #Tags= Analogico.objects.all()
           #tag_ins=Tags.filter(pk__exact=idtag_DC)
                   tag_ins = Analogico.objects.get(pk=idtag)
                   tk_ins = Tk.objects.get(pk=tag_ins.id_Tk.pk)
                   #print(tk_ins)


                   if (tag_ins.etiqueta1=='pt') :

                        Presion_tk = vb_PV
                        idtag_pt = tag_ins.pk
                        timestamp_pt = vb_timestamp_DC
                        pt_unidad=tag_ins.Unidad

                        pt_alarma=Alarmas(Presion_tk, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)


                        Data_tanques_temp['IDPT'] = idtag_pt,
                        Data_tanques_temp['PT_UNIDAD'] = pt_unidad,
                        Data_tanques_temp['PT'] = str(Presion_tk),
                        Data_tanques_temp['PT_ALARMA']= pt_alarma
                        Data_tanques_temp['TIMESTAMP_pt'] =  timestamp_pt




                   if (tag_ins.etiqueta1=='tt'):

                        temperatura_producto=vb_PV
                        idtag_tt = tag_ins.pk
                        timestamp_tt = vb_timestamp_DC
                        tt_unidad=tag_ins.Unidad


                        tt_alarma=Alarmas(temperatura_producto, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)


                        Data_tanques_temp['IDTT'] = idtag_tt
                        Data_tanques_temp['TT_UNIDAD'] = tt_unidad
                        Data_tanques_temp['TT'] = str(temperatura_producto)
                        Data_tanques_temp['TT_ALARMA']= tt_alarma
                        Data_tanques_temp['TIMESTAMP_tt'] =  timestamp_tt



                   if (tag_ins.etiqueta1=='lta'):
                             # if idtag_DC.etiqueta1=='lta':
                        nivel_agua_libre=vb_PV
                        idtag_lta = tag_ins.pk
                        timestamp_lta = vb_timestamp_DC
                        lta_unidad=tag_ins.Unidad


                        lta_alarma=Alarmas(nivel_agua_libre, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)


                        Data_tanques_temp['IDLTA'] = idtag_lta
                        Data_tanques_temp['LTA_UNIDAD'] = lta_unidad,
                        Data_tanques_temp['LTA'] =  str(nivel_agua_libre)
                        Data_tanques_temp['LTA_ALARMA']= lta_alarma
                        Data_tanques_temp['TIMESTAMP_lta'] =  timestamp_lta

                   if (tag_ins.etiqueta1=='ays'):
                              #if idtag_DC.etiqueta1=='ays':
                        ays=vb_PV
                        idtag_ays = tag_ins.pk
                        timestamp_ays = vb_timestamp_DC
                        ays_unidad=tag_ins.Unidad



                        ays_alarma=Alarmas(ays, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)



                        Data_tanques_temp['IDAYS'] = idtag_ays,
                        Data_tanques_temp['AYS_UNIDAD'] = ays_unidad,
                        Data_tanques_temp['AYS'] =  str(ays),
                        Data_tanques_temp['AYS_ALARMA']= ays_alarma
                        Data_tanques_temp['TIMESTAMP_ays'] =  timestamp_ays,






                   if (tag_ins.etiqueta1=='lt'):

                        nivel_producto=vb_PV
                        idtag_lt = tag_ins.pk
                        lt_unidad = tag_ins.Unidad
                        timestamp_lt = vb_timestamp_DC

                        lt_alarma=Alarmas(nivel_producto, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)


                        try:
                            #time.sleep(1)

                            volumenes=VOLUMENES(nivel_producto,ays)
                            #print(volumenes)
                            tov = volumenes['TOV']
                            gsv = volumenes['GSV']
                            nsv = volumenes['NSV']

                            porcentaje = Escalamiento(nivel_producto, tag_ins.ValorMinimo, tag_ins.ValorMaximo)
                            #print(porcentaje)

                            instance_tov = Analogico.objects.get(id_Tk = tag_ins.id_Tk.pk, etiqueta1='TOV')


                            timestamp_tov = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                            tov_alarma=Alarmas(tov, instance_tov.LL, instance_tov.L, instance_tov.H, instance_tov.HH)

                            tov_unidad = instance_tov.Unidad


                            instance_gsv = Analogico.objects.get(id_Tk= tag_ins.id_Tk.pk, etiqueta1='GSV')
                            timestamp_gsv = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                            gsv_alarma=Alarmas(gsv, instance_gsv.LL, instance_gsv.L, instance_gsv.H, instance_gsv.HH)

                            gsv_unidad = instance_gsv.Unidad


                            instance_nsv = Analogico.objects.get(id_Tk= tag_ins.id_Tk.pk, etiqueta1='NSV')
                            timestamp_nsv = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                            nsv_alarma=Alarmas(nsv, instance_nsv.LL, instance_nsv.L, instance_nsv.H, instance_nsv.HH)

                            nsv_unidad = instance_nsv.Unidad

                            Data_tanques_temp['LT']=  str(nivel_producto)
                            Data_tanques_temp['LT_PORCENTAJE']= str(porcentaje)
                            Data_tanques_temp['IDTOV']= instance_tov.pk
                            Data_tanques_temp['IDNSV']=  instance_nsv.pk
                            Data_tanques_temp['IDGSV']= instance_gsv.pk
                            Data_tanques_temp['IDLT'] = idtag_lt
                            Data_tanques_temp['TOV']= str(tov)
                            Data_tanques_temp['TOV_UNIDAD']=    tov_unidad
                            Data_tanques_temp['GSV']= str(gsv)
                            Data_tanques_temp['GSV_UNIDAD'] =    gsv_unidad
                            Data_tanques_temp['NSV'] =   str(nsv)
                            Data_tanques_temp['NSV_UNIDAD']=   nsv_unidad
                            Data_tanques_temp['LT_UNIDAD']=    lt_unidad
                            Data_tanques_temp['VALORMAXIMO']=  tag_ins.ValorMaximo
                            Data_tanques_temp['VALORMINIMO'] =  tag_ins.ValorMinimo
                            Data_tanques_temp['LT_ALARMA']=     lt_alarma
                            Data_tanques_temp['TOV_ALARMA']=  tov_alarma
                            Data_tanques_temp['NSV_ALARMA']=  nsv_alarma
                            Data_tanques_temp['GSV_ALARMA'] =    gsv_alarma
                            Data_tanques_temp['TIMESTAMP_lt']=   timestamp_lt
                            Data_tanques_temp['TIMESTAMP_TOV']= timestamp_tov
                            Data_tanques_temp['TIMESTAMP_GSV']= timestamp_gsv
                            Data_tanques_temp['TIMESTAMP_NSV']= timestamp_nsv





                        except:
                            print("Error de parseo", sys.exc_info()[0], "occurred.")



                            if  (nivel_producto >= tag_ins.ValorMinimo and  nivel_producto <= tag_ins.ValorMaximo):
                                print('CALCULANDO VOLUMENES TANQUE', tk.Nombre)

                            else:
                                print('NIVEL DE PRODUCTO FUERA DE RANGOS EN TANQUE:', tk.Nombre)



                  #    ciclo1+=1
                      #print(ciclo0,ciclo1)




               Data_tanques[tk_ins.pk] ={'TANQUE': tk_ins.Nombre}

               Data_tanques[tk_ins.pk].update(Data_tanques_temp)

               try:

                  with fs.open(ruta_Data+'/Buffer_Datos_Calculados.json', mode= 'w') as file2:

                      file2.write(json.dumps(Data_tanques)) #A archivo json
               except:
                  print("Error inesperado escribiendo Data calculada:", sys.exc_info()[0])

               tk_ins.current_data  = Data_tanques

               tk_ins.save()








               #for tk in Tk.objects.iterator():  # ITERANDO EN TANQUES EXISTENTES.
                # RECORRIENDO LOS TAGS DE CADA TANQUE
                    #ciclo0+=1



                    #for tag in Tag.objects.filter(id_Tk=tk.pk).iterator(): #iteranado en los tags pertenecientes al tanque del ciclo

                               #idtk_DC_int=Analogico_DC.id_Tk


#INSTANCIANDO LOS RANGOS DEL TAG
