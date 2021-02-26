import json
from django.core.management.base import BaseCommand
from acq.models import Tk, Tag, Analogico
from acq.calculos import TOV, FloatIeee754
from datetime import datetime
import time
from django.core.files.storage import FileSystemStorage
from django.conf import settings
import numpy

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
       nivel_medido=0
       ruta_Data=fs.location   #RUTA DE BUFFER
       idtag_lt=0
       timestamp_lt=''
       tov=0.00
       Data_Basica_lt={}
       Data_Calculada_tov={}
       instance_tov={}
       while i<=n:


#OBTENIENDO DATOS DEL BUFFER DATA CRUDA

               with fs.open(ruta_Data+'/Buffer_Data_Cruda.json', mode = 'r') as data_file_r:
                  data_fr = json.loads(data_file_r.read())

#INSTANCIAR EL TAG CALCULANDO SU VALOR REAL IEEE754 SOLO SI ES ANALOGICO
               idtag_DC=Tag.objects.get(pk=data_fr['IDTAG']) #id tag data cruda
               if Analogico.objects.filter(data__idtag=idtag_DC).exists():

                   Analogico_DC =  Analogico.objects.get(pk=idtag_DC) #INSTANCIANDO LOS RANGOS DEL TAG

              # for i in numpy.arange(0, 5.5, 0.5):
                #   print(i)
                   rango_valido_DC=numpy.arange(Analogico_DC.ValorMinimo, Analogico_DC.ValorMaximo, 0.001)
               #print(rango_valido_DC)
               #rango_valido_DC=range( Analogico_DC.ValorMinimo,  Analogico_DC.ValorMaximo) #INSTANCIANDO LOS RANGOS DEL TAG

                   vb_REG_1=data_fr['REGISTRO_1']
                   vb_REG_2=data_fr['REGISTRO_2']
                   vb_timestamp_DC=data_fr['TIMESTAMP']
                   vb_PV= nivel_medido=FloatIeee754(int(vb_REG_1),int(vb_REG_2))


               #NIVEL MEDIDO CONVIRTIENDO EN DATA TIPO REAL LOS REGISTROS MODBUS PROVENIENTE DEL BUFFER DATA CRUDA
                    switch (idtag_DC.etiqueta1) {

                    case 'lt': idtag_lt=idtag_DC;
                               nivel_medido=vb_PV;
                               break;

                    }
                   if idtag_DC.etiqueta1=='lt':
                      idtag_lt=idtag_DC

                      timestamp_lt=timestamp_DC
                      nivel_medido=FloatIeee754(int(REG_1),int(REG_2))

                      #INSTANCIANDO EL TANQUE
                      idtk=idtag_DC.id_Tk

                      if nivel_medido in rango_valido_DC:
                          print('Calculando TOV........')
                          tov=TOV(nivel_medido, idtk)
                          print(nivel_medido)
                          print(tov)


                      #INSTANCIANDO EL TAG TOV
                      instance_tov = Tag.objects.get(id_Tk= idtk, etiqueta1='TOV')
                      timestamp_tov = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]

                      Data_Calculada_tov  = {"IDTAG":str(instance_tov.pk),
                               "TAG_VALUE":str(tov),
                               "TIMESTAMP":timestamp_tov,
                               "INDEXADO": 0,

                               }
                      with fs.open(ruta_Data+'/Buffer_Datos_Calculados.json', mode= 'w') as file2:

                               file2.write(json.dumps(Data_Calculada_tov))




                      #GENERANDO BUEFFERS DE DATOS BASICOS Y DATOS CALCULADOS DE TK


                  else:
                      print('VARIABLE BASICA FUERA DE RANGOS........')


               Data_Basica_lt={"IDTAG":str(idtag_lt),
                          "TAG_VALUE":str(nivel_medido),
                          "TIMESTAMP":timestamp_lt,
                          "INDEXADO": 0,
                             }





             #print(Data_Basica_lt)
             #print(Data_Calculada_tov)

               with fs.open(ruta_Data+'/Buffer_Datos_Basicos.json', mode= 'w') as file1:

                      file1.write(json.dumps(Data_Basica_lt))


               time.sleep(1)
