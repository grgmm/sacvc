import threading
from Backend.COMUNICACION.Adquisicion import acq
from Backend.VOLUMENES.Computos import cpt

import time


#=====================================================================
#ESTE ARCIVO TIENE LA FUNCION DE DESCARGAR DE LOGICA NO REFERIDA A VISTAS DEL ARCHIVO views.py 

#=====================================================================
#HILOS PARA LA EJECUCION DE SCRIPTS DE ADQUISICION COMPUTO DE HISTORIZACION DE DATOS

def tarea_acq(mensaje,puertomb,idslave,ipslave ):
    t_acq = threading.currentThread()
    while getattr(t_acq, "activar", True):
        acq.mbtcpserver(puertomb ,idslave , ipslave)        
       

def tarea_cpt(mensaje):
    t_cpt = threading.currentThread()
    while getattr(t_cpt, "activar", True):
        print(cpt.volumenes(), mensaje)
        #volumenes=cpt.volumenes


        

def tarea_hs(arg):
    t_hs = threading.currentThread()
    while getattr(t_hs, "activar", True):
        time.sleep(1)
      
def tarea_ges_hs(arg):
    t_ges_hs = threading.currentThread()
    while getattr(t_ges_hs, "activar", True):
        #poner aqui el codigo deseado
        #print ('Ejecutando GES_HS '+t_ges_hs.name+' %s' % arg)
        time.sleep(1)