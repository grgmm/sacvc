
from django.core.management.base import BaseCommand
from acq.models import Tk, Tag, Analogico
from .calculos import TOV
from datetime import datetime


class Command(BaseCommand):
    help = 'help'


    def vol_tanques():

       timestamp=""

       with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file_r: # OJO MEJORAR
          data_fr = json.loads(data_file_r.read())

          timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-7]

          nivel_medido = dataf['PV_FLOAT']
          tag=data_fr['TAG']
          idtk=data_fr['IDTK']
          data_fr.close()
          tov=TOV(nivel_medido, tag, idtk)

          json_temp= {"IDTAG":str(tag_instance.pk),"TAG":str(tag_instance.Nombre),"DIRECCION":tag_instance.direccion,"IDTK":tk_instance.pk,"TANQUE":str(tk_instance.Nombre), "INSTALACION":tk_instance.id_patioTanque.Nombre, "TIMESTAMP":timestamp,"PV0":leer[1],"PV1":leer[2], "PV_FLOAT":float_value, "UNIDAD":(Analogico_instance.Unidad),  "INDEXADO": 0}

        with open ('/home/morenomx/solucionesweb/sacvc/tov.json','w') as data_file_w:
          data_file_w.write(json.dumps(json_temp))
          data_file_w.close()



       return(tov)
