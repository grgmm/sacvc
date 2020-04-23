from django.shortcuts import render
from django.http import HttpResponse
import socket
import json
import random
from umodbus import conf
from umodbus.client import tcp
import time
from datetime import datetime
from django.http import JsonResponse
from .models import Tag
from .models import PatioTanque




def lista(request):
   tags = Tag.objects.all()
   json_data = []
   n=0
    
    
   with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json para escrtitura 
     json_data = json.loads(json.dumps(data_file.read()))
     data_file.close()


  

   return  HttpResponse(render(request, "lista.html", {'json_data': json_data}))


def actualizar(request):
   
   with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json para escrtitura 
      dataf = json.loads(data_file.read())
      data_file.close()
   
   return JsonResponse(dataf)



def patiotanque_list(request):
    patiotanques = PatioTanque.objects.all()
    return render(request, 'acq/patiotanques_list.html', {'patiotanques': patiotanques})

   