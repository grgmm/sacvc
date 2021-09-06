# OBTENER TOV A TRAVES DEL NIVEL MEDIDO
from .models import Tag, Tk, Tct
import numpy as np
import struct
import sys
import time

def Alarmas(vp,ll,l,h,hh):
    status=''
    if (l < vp and vp < h):
        status='N'
    else:
        if (vp  > hh or vp  < ll):
            status='C'
        else:
            status='U'
    return status

def Escalamiento(valormedido, minimo, maximo):
    if (maximo-minimo) != 0:
        valorescalado = (100 * valormedido / (maximo - minimo))
    else:
        valorescalado = 0

    return(round(valorescalado,2))


def FloatIeee754(registro1,registro2):

        #print

        if registro1 < 0:
            registro1=(65535+registro1)+1

        if registro2 < 0:
            registro2=(65535+registro2)+1


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

def VOLUMENES(nivel_medido, ays):
        tov, gsv, nsv=0,0,0
        volumenes={}
        debug=''
        try:
            q=Tct.objects.all()
            first_reg=Tct.objects.all().first()
            last_reg=Tct.objects.all().last()
            if (nivel_medido > first_reg.Lt0 and nivel_medido < last_reg.Lt0) :
                for fila in q:
                    if fila.Lt0 == nivel_medido:
                        tov = fila.Tov0
                        gsv = tov - ays
                        nsv = gsv - ays
                        volumenes = {"TOV": tov,
                                     "NSV": round(nsv, 3),
                                     "GSV": round(gsv, 3), }
                return volumenes

            if nivel_medido < first_reg.Lt0 :
                volumenes = {"TOV": first_reg.Tov0,
                             "NSV": round(nsv, 3),
                             "GSV": round(gsv, 3), }
                return volumenes

            if nivel_medido > last_reg.Lt0 :
                volumenes = {"TOV": last_reg.Tov0,
                             "NSV": round(nsv, 3),
                             "GSV": round(gsv, 3), }
                return volumenes
        except:
            print("Error leyendo tabla de Aforo TCT", sys.exc_info()[0], "occurred.")
            volumenes = {"TOV": 0,
                         "NSV": 0,
                         "GSV": 0, }
            return volumenes


def Settings_Alarmas(ValorMaximo,ValorMinimo):
    """ settings inicial de alarmas basados en los valores minimos y máximos del parámetro
    correspondiete, (5% para LL, 10% para L, 90% para H y 100% para HH)
    """
    LL=((ValorMaximo - ValorMinimo)*5/100)
    L=((ValorMaximo - ValorMinimo)*10/100)
    H=((ValorMaximo - ValorMinimo)*90/100)
    HH=((ValorMaximo - ValorMinimo)*95/100)
    settings_alarmas = {"ll":LL,
        "l":L,
        "h":H,
        'hh':HH, }

    return settings_alarmas


