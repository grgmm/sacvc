

# OBTENER TOV A TRAVES DEL NIVEL MEDIDO
from .models import Tag, Tk, Tct

def mv_tanques(nivel_medido, tag, idtk):
    lt_tct=0
    lt_t0v=0
    tov=0
    print(nivel_medido)
    print(tag)
    print(idtk)
    if (Tct.objects.count() != 0):
      filtro_tk_tct=Tct.objects.filter(id_tk=idtk).iterator()
      #print(filtro_tk_tct)

      #Tag_Bd = Analogico_Hs.objects.filter(data__idtag=id_Tag_Filter).latest('data__TIMESTAMP') #se posiciona en el ultimo


      #print(filtro_tk_tct)

      for recorrido in filtro_tk_tct:
        lt_tct=recorrido.Lt0
        lt_tov=recorrido.Tov0
        if lt_tct==nivel_medido:
          tov=lt_tov






    return(tov)
