

# OBTENER TOV A TRAVES DEL NIVEL MEDIDO
from .models import Tag, Tk, Tct
import numpy as np
import struct
import sys
import time


def FloatIeee754(registro1,registro2):

#def FloatIeee754(registro1,registro2):
        print

        if registro1 < 0:
            print('reg1 antes', registro1)
            registro1=(65535+registro1)+1
            print('reg2 despues', registro1)

        if registro2 < 0:
            print('reg2 antes', registro2)
            registro2=(65535+registro2)+1
            print('reg2 despues', registro2)


        print(registro1, registro2)



        packed_string = struct.pack("ii", registro1,registro2)

        valida_reg1= str(np.base_repr(registro1, base=2))
        valida_reg2= str(np.base_repr(registro2, base=2))


        completar0=16-(len(valida_reg2))
        completar00=16-(len(valida_reg1))
        ceros0= ''
        fvalue=0.0
        fdata=0

        #bit_data = '0'+ str(np.base_repr(registro1, base=2)) + '0' + str(np.base_repr(registro2, base=2,))
        while (completar0>0):
            ceros0=ceros0+'0'
            completar0=completar0-1 #para iterar


        bit_data =  '0' + valida_reg1 + ceros0 + valida_reg2


        #bit_number = '0'+ str(np.base_repr(registro1, base=2)) + '0' + '0'+'0'+'0'+'0'+'0'+'0'+'0'+'0'+'0'+'0'+'0'+'0'+'0'+'0'+'0'
        #fdata = int(bit_data, 2)
        try:

            fdata = int(bit_data, 2)

            fvalue = struct.unpack('f', struct.pack('I', fdata))[0]

        except:
            print("Error de Formato", sys.exc_info()[0], "occurred.")


        time.sleep(0.1)
        #fvalue= round(fvalue,3)
        return(round(fvalue,3))
        #return(fvalue1)

def VOLUMENES(nivel_medido, idtk, ays):
        lt_tct=0
        lt_t0v=0
        tov=0
        gsv=0
        nsv=0
        volumenes = {
                     }
        #print(nivel_medido)
        #print(idtk)
        if (Tct.objects.count() != 0) and (nivel_medido != 0 ):
          filtro_tk_tct=Tct.objects.filter(id_tk=idtk).iterator()
          for recorrido in filtro_tk_tct:
            lt_tct=recorrido.Lt0
            lt_tov=recorrido.Tov0
            if lt_tct==nivel_medido:
               tov=lt_tov
               gsv=tov-10.0
               nsv=gsv-10.0
               volumenes  = {"TOV":tov,
                       "NSV":nsv,
                       "GSV":gsv, }
            else:
                pass
        return(volumenes)
