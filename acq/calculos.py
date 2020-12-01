

# OBTENER TOV A TRAVES DEL NIVEL MEDIDO
from .models import Tag, Tk, Tct
import numpy as np
import struct

def FloatIeee754(registro0=16384,registro1=16500):
        packed_string = struct.pack("ii", registro0,registro1)
        bit_number = '0'+ str(np.base_repr(registro1, base=2)) + '0' + str(np.base_repr(registro0, base=2))
        fdata = int(bit_number, 2)
        fvalue = struct.unpack('f', struct.pack('I', fdata))[0]
        fvalue1= round(fvalue,3)
        return(fvalue1)

def TOV(nivel_medido, idtk):
        lt_tct=0
        lt_t0v=0
        tov=0
        #print(nivel_medido)
        #print(idtk)
        if (Tct.objects.count() != 0):
          filtro_tk_tct=Tct.objects.filter(id_tk=idtk).iterator()

          for recorrido in filtro_tk_tct:
            lt_tct=recorrido.Lt0
            lt_tov=recorrido.Tov0
            if lt_tct==nivel_medido:
               tov=lt_tov
        return(tov)
