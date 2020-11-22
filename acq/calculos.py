

# OBTENER TOV A TRAVES DEL NIVEL MEDIDO
from .models import Tag, Tk, Tct

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
