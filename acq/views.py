from django.shortcuts import render
from django.http import HttpResponse
import socket
import json
import random
from umodbus import conf
from umodbus.client import tcp
import time
from datetime import datetime
from .models import Tag


def index(request):
 conf.SIGNED_VALUES = True
 print('\n' '\n'  "         PRUEBA MODBUS DESARROLLADA POR: Ing Miguel Moreno")
 print('\n' '\n' "   Dirección IP del Esclavo Modbus: 192.168.43.143")
 print('\n' '\n' "Puerto del Esclavo Modbus: 5002")
 print('\n' '\n' "Id del Esclavo 1 Modbus 11")
 print('\n' '\n' "Dirección los registros en los Esclavo Modbus 101 en adelante")
 json_data = []

 with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json para escrtitura 
  json_data = json.loads(json.dumps(data_file.read()))
  return HttpResponse(json_data, content_type='application/json')

def lista(request):
   tags = Tag.objects.all()
   json_data = []

   with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json para escrtitura 
       json_data = json.loads(json.dumps(data_file.read()))
   
   #return HttpResponse(json_data, content_type='application/json')
  

   return render(request, "lista.html", {'json_data': json_data})

  #return render(request, 'lista.html', {'tags': tags}),

