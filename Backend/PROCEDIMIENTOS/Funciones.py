import threading
from Backend.COMUNICACION.Adquisicion import acq
import time



#=====================================================================
#ESTE ARCIVO TIENE LA FUNCION DE DESCARGAR LA LOGICA NO REFERIDA A VISTAS DEL ARCHIVO views.py 


#=====================================================================
#HILOS PARA LA EJECUCION DE SCRIPTS DE ADQUISICION TRATAMIENTO DE HISTORIZACION DE DATOS

def tarea_acq(mensaje,puertomb,idslave,ipslave ):
    t_acq = threading.currentThread()
    while getattr(t_acq, "activar", True):
        # poner aqui el codigo deseado
        acq.mbtcpserver(puertomb ,idslave , ipslave)        
        #print ('Ejecutando ACQ '+t_acq.name+' %s' % mensaje)
        #time.sleep(1)

'''
def tarea_acq(arg):
    t_acq = threading.currentThread()
    while getattr(t_acq, "activar", True):
        # poner aqui el codigo deseado
        acq.mbtcpserver(5002 ,11 , '127.0.0.1')        
        print ('Ejecutando ACQ '+t_acq.name+' %s' % arg)
        #time.sleep(1)
        # '''

def tarea_cpt(arg):
    t_cpt = threading.currentThread()
    while getattr(t_cpt, "activar", True):
        #poner aqui el codigo deseado
        #print ('Ejecutando CPT '+t_cpt.name+' %s' % arg)
        time.sleep(1)

def tarea_hs(arg):
    t_hs = threading.currentThread()
    while getattr(t_hs, "activar", True):
        #poner aqui el codigo deseado
        #print ('Ejecutando HS '+t_hs.name+' %s' % arg)
        time.sleep(1)

def tarea_ges_hs(arg):
    t_ges_hs = threading.currentThread()
    while getattr(t_ges_hs, "activar", True):
        #poner aqui el codigo deseado
        #print ('Ejecutando GES_HS '+t_ges_hs.name+' %s' % arg)
        time.sleep(1)