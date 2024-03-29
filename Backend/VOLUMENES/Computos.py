import json
from django.core.management.base import BaseCommand
from acq.models import Tk, Tag, Analogico, Tct
from acq.calculos import VOLUMENES, FloatIeee754, Alarmas, Escalamiento
from datetime import datetime
import time
from django.core.files.storage import FileSystemStorage
from django.conf import settings
import sys
class cpt():
    help = 'help'
    def volumenes():
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
       #gsv_unidad=''
       #nsv_unidad=''
       porcentaje=''
       data_fr= ''
       tagcount= 1
       idtag_DC=1
       #tt_unidad = ''
       #pt_unidad = ''
       #lta_unidad = ''
       #ays_unidad = ''
       Data_tanques_pt, Data_tanques_tt,Data_tanques_lta, Data_tanques_ays, Data_tanque_lt = {},{},{},{},{}
       Data_tanques={}
       a=True
       if a==True:
#OBTENIENDO DATOS DEL BUFFER DATA CRUDA
               
               try:
                    with fs.open(ruta_Data+'/Buffer_Data_Cruda.json', mode = 'r') as data_file_r:
                            data_fr = json.loads(data_file_r.read())
                            tagcount=(len(data_fr['Data_Cruda']))
                    for recorrido in range(tagcount):
                        idtag = data_fr['Data_Cruda'][recorrido]['IDTAG']
                        vb_REG_1=data_fr['Data_Cruda'][recorrido]['REGISTRO_1']
                        vb_REG_2=data_fr['Data_Cruda'][recorrido]['REGISTRO_2']
                        vb_timestamp_DC=data_fr['Data_Cruda'][recorrido]['TIMESTAMP']
                        vb_PV=FloatIeee754(int(vb_REG_2), int(vb_REG_1))
                        tag_ins = Analogico.objects.get(pk=idtag)
                        tk_ins = Tk.objects.get(pk=tag_ins.id_Tk.pk)
                        if (tag_ins.etiqueta1=='pt') :
                                Presion_tk = vb_PV
                                idtag_pt = tag_ins.pk
                                timestamp_pt = vb_timestamp_DC
                                pt_alarma=Alarmas(Presion_tk, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)
                                Data_tanques_temp['IDPT'] = idtag_pt
                                Data_tanques_temp['PT'] = str(Presion_tk)

                                Data_tanques_temp['PT_ALARMA']= pt_alarma['status'] #U=URGENTE,N=NORMAL, C=CRITICA
                                Data_tanques_temp['PT_CRITERIO_ALARMA']= pt_alarma['criterio_alarma'] #L=BAJA PRESIÓN DE PRODUCTO, LL=MUY BAJA PRESIÓN DE PRODUCTO,
                                #H=ALTA PRESIÓN DE PRODUCTO, HH= MUY ALTA PRESIÓN DE PRODUCTO

                                Data_tanques_temp['TIMESTAMP_pt'] =  timestamp_pt
                        if (tag_ins.etiqueta1=='tt'):
                                temperatura_producto=vb_PV
                                idtag_tt = tag_ins.pk
                                timestamp_tt = vb_timestamp_DC
                                tt_alarma=Alarmas(temperatura_producto, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)
                                Data_tanques_temp['IDTT'] = idtag_tt
                                #Data_tanques_temp['TT_UNIDAD'] = tt_unidad
                                Data_tanques_temp['TT'] = str(temperatura_producto)

                                Data_tanques_temp['TT_ALARMA']= tt_alarma['status'] #U=URGENTE,N=NORMAL, C=CRITICA
                                Data_tanques_temp['TT_CRITERIO_ALARMA']= tt_alarma['criterio_alarma'] #L=BAJA TEMPERATURA DE PRODUCTO, LL=MUY BAJA TEMPERATURA DE PRODUCTO,
                                #H=ALTA TEMPERATURA DE PRODUCTO, HH= MUY ALTA BAJA TEMPERATURA DE PRODUCTO
                                Data_tanques_temp['TIMESTAMP_tt'] =  timestamp_tt

                        if (tag_ins.etiqueta1=='lta'):
                                nivel_agua_libre=vb_PV
                                idtag_lta = tag_ins.pk
                                timestamp_lta = vb_timestamp_DC
                                lta_alarma=Alarmas(nivel_agua_libre, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)
                                Data_tanques_temp['IDLTA'] = idtag_lta
                                Data_tanques_temp['LTA'] =  str(nivel_agua_libre)

                                Data_tanques_temp['LTA_ALARMA']= lta_alarma['status'] #U=URGENTE,N=NORMAL, C=CRITICA
                                Data_tanques_temp['LTA_CRITERIO_ALARMA']= lta_alarma['criterio_alarma'] #L=BAJO NIVEL DE AGUA LIBRE, LL=MUY BAJO NIVEL DE AGUA LIBRE,
                                #H=ALTA NIVEL DE AGUA LIBRE, HH= MUY ALTO NIVEL DE AGUA LIBRE


                                Data_tanques_temp['TIMESTAMP_lta'] =  timestamp_lta
                        if (tag_ins.etiqueta1=='ays'):
                                ays=vb_PV
                                idtag_ays = tag_ins.pk
                                timestamp_ays = vb_timestamp_DC
                                ays_alarma=Alarmas(ays, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)
                                Data_tanques_temp['IDAYS'] = idtag_ays
                                Data_tanques_temp['AYS'] =  str(ays)

                                Data_tanques_temp['AYS_ALARMA']= ays_alarma['status'] #U=URGENTE,N=NORMAL, C=CRITICA
                                Data_tanques_temp['AYS_CRITERIO_ALARMA']= ays_alarma['criterio_alarma'] #L=BAJO NIVEL DE AGUA Y SEDIMENTO, LL=MUY BAJO NIVEL DE AGUA Y SEDIMENTO,
                                #H=ALTA NIVEL DE AGUA Y SEDIMENTO, HH= MUY ALTO NIVEL DE AGUA Y SEDIMENTO


                               

                                Data_tanques_temp['TIMESTAMP_ays'] =  timestamp_ays
                        if (tag_ins.etiqueta1=='lt'):
                                nivel_producto=vb_PV
                                idtag_lt = tag_ins.pk
                                timestamp_lt = vb_timestamp_DC
                                lt_alarma=Alarmas(nivel_producto, tag_ins.LL, tag_ins.L, tag_ins.H, tag_ins.HH)
                                Data_tanques_temp['LT']=  str(nivel_producto)

                                try:
                                    time.sleep(1)
                                    volumenes=VOLUMENES(nivel_producto,ays)
                                    tov = volumenes['TOV']
                                    gsv = volumenes['GSV']
                                    nsv = volumenes['NSV']
                                    print(tov)
                                    porcentaje = Escalamiento(nivel_producto, tag_ins.ValorMinimo, tag_ins.ValorMaximo)
                                    instance_tov = Analogico.objects.get(id_Tk = tag_ins.id_Tk.pk, etiqueta1='TOV')
                                    timestamp_tov = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                                    tov_alarma=Alarmas(tov, instance_tov.LL, instance_tov.L, instance_tov.H, instance_tov.HH)
                                    instance_gsv = Analogico.objects.get(id_Tk= tag_ins.id_Tk.pk, etiqueta1='GSV')
                                    timestamp_gsv = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                                    gsv_alarma=Alarmas(gsv, instance_gsv.LL, instance_gsv.L, instance_gsv.H, instance_gsv.HH)
                                    instance_nsv = Analogico.objects.get(id_Tk= tag_ins.id_Tk.pk, etiqueta1='NSV')
                                    timestamp_nsv = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]
                                    nsv_alarma=Alarmas(nsv, instance_nsv.LL, instance_nsv.L, instance_nsv.H, instance_nsv.HH)
                                    #Data_tanques_temp['LT']=  str(nivel_producto)
                                    Data_tanques_temp['LT_PORCENTAJE']= str(porcentaje)
                                    Data_tanques_temp['IDTOV']= instance_tov.pk
                                    Data_tanques_temp['IDNSV']=  instance_nsv.pk
                                    Data_tanques_temp['IDGSV']= instance_gsv.pk
                                    Data_tanques_temp['IDLT'] = idtag_lt
                                    Data_tanques_temp['TOV']= str(tov)
                                    Data_tanques_temp['GSV']= str(gsv)
                                    Data_tanques_temp['NSV'] =   str(nsv)
                                    Data_tanques_temp['VALORMAXIMO']=  tag_ins.ValorMaximo
                                    Data_tanques_temp['VALORMINIMO'] =  tag_ins.ValorMinimo

                                    Data_tanques_temp['LT_ALARMA']=  lt_alarma['status'] #U=URGENTE,N=NORMAL, C=CRITICA
                                    Data_tanques_temp['LT_CRITERIO_ALARMA']=  lt_alarma['criterio_alarma'] #L=BAJO NIVEL DE PRODUCTO, LL=MUY BAJO NIVEL DE PRODUCTO,
                                   #H=ALTO NIVEL DE PRODUCTO, HH= MUY ALTO NIVEL DE PRODUCTO

                                    Data_tanques_temp['TOV_ALARMA']=  tov_alarma['status'] #U=URGENTE,N=NORMAL, C=CRITICA
                                    Data_tanques_temp['TOV_CRITERIO_ALARMA']=  tov_alarma['criterio_alarma'] #L=BAJO VOLUMEN TOTAL OBSERVADO DE PRODUCTO, LL=MUY BAJO VOLUMEN NETO ESTANDAR DE PRODUCTO,
                                   #H=ALTO VOLUMEN TOTAL OBSERVADO DE PRODUCTO, HH= MUY ALTO VOLUMEN TOTAL OBSERVADO DE PRODUCTO



                                    Data_tanques_temp['NSV_ALARMA']=  nsv_alarma['status'] #U=URGENTE,N=NORMAL, C=CRITICA
                                    Data_tanques_temp['NSV_CRITERIO_ALARMA']=  nsv_alarma['criterio_alarma']#L=BAJO VOLUMEN NETO ESTANDAR DE PRODUCTO, LL=MUY BAJO VOLUMEN NETO ESTANDAR DE PRODUCTO,
                                   #H=ALTO VOLUMEN NETO ESTANDAR DE PRODUCTO, HH= MUY ALTO VOLUMEN NETO ESTANDAR DE PRODUCTO

                                    Data_tanques_temp['GSV_ALARMA'] =    gsv_alarma['status'] #U=URGENTE,N=NORMAL, C=CRITICA
                                    Data_tanques_temp['GSV_CRITERIO_ALARMA'] =    gsv_alarma['criterio_alarma'] #L=BAJO VOLUMEN BRUTO ESTANDAR DE PRODUCTO, LL=MUY BAJO VOLUMEN BRUTO ESTANDAR DE PRODUCTO,
                                   #H=ALTO VOLUMEN BRUTO ESTANDAR DE PRODUCTO, HH= MUY ALTO VOLUMEN BRUTO ESTANDAR DE PRODUCTO


                                    Data_tanques_temp['TIMESTAMP_lt']=   timestamp_lt
                                    Data_tanques_temp['TIMESTAMP_TOV']= timestamp_tov
                                    Data_tanques_temp['TIMESTAMP_GSV']= timestamp_gsv
                                    Data_tanques_temp['TIMESTAMP_NSV']= timestamp_nsv
                                    if  (nivel_producto >= tag_ins.ValorMinimo and  nivel_producto <= tag_ins.ValorMaximo):
                                        print('CALCULANDO VOLUMENES TANQUE', tk_ins.Nombre)
                                    else:
                                        print('NIVEL DE PRODUCTO FUERA DE RANGOS EN TANQUE:', tk_ins.Nombre)
                                except:
                                    print("Error de parseo ", sys.exc_info()[0], "occurred.")
                    Data_tanques[tk_ins.pk] ={'TANQUE': tk_ins.Nombre}
                    Data_tanques[tk_ins.pk].update(Data_tanques_temp)
                    print(Data_tanques)
                    try:
                        with fs.open(ruta_Data+'/Buffer_Datos_Calculados.json', mode= 'w') as file2:

                            file2.write(json.dumps(Data_tanques)) #A archivo json
                    except:
                        print("Error inesperado escribiendo Data calculada:", sys.exc_info()[0])
                    tk_ins.current_data  = Data_tanques
                    tk_ins.save()
               except:
                      print("Error inesperado  leyendo data cruda:", sys.exc_info()[0])