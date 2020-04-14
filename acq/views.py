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
from django.http import JsonResponse


#def index(request):
 #conf.SIGNED_VALUES = True
 #print('\n' '\n'  "         PRUEBA MODBUS DESARROLLADA POR: Ing Miguel Moreno")
 #print('\n' '\n' "   Dirección IP del Esclavo Modbus: 192.168.43.143")
 #print('\n' '\n' "Puerto del Esclavo Modbus: 5002")
 #print('\n' '\n' "Id del Esclavo 1 Modbus 11")
 #print('\n' '\n' "Dirección los registros en los Esclavo Modbus 101 en adelante")
 #json_data = []

 #with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json para escrtitura 
  #json_data = json.loads(json.dumps(data_file.read()))
  #return HttpResponse(json_data, content_type='application/json')

def lista(request):
   tags = Tag.objects.all()
   json_data = []
   n=0
    
    
   with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json para escrtitura 
     json_data = json.loads(json.dumps(data_file.read()))
     #render(request, "lista.html", {'json_data': json_data})
     data_file.close()


   #return HttpResponse(json_data, content_type='application/json')
  

   return  HttpResponse(render(request, "lista.html", {'json_data': json_data}))

  #return render(request, 'lista.html', {'tags': tags}),

def actualizar(request):
   
   with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json para escrtitura 
      dataf = json.loads(data_file.read())
      data_file.close()

 #  if request.is_ajax():   #render(request, "jquery_ajax.html", {'json_data': json_data})
      
  #  message = request.POST.get('message')
   # if message == 'Send Ajax request':
    # response= JsonResponse(data)
      #data.update(is_valid=True)         
      #data.update(‘response’=’This is the response you wanted’)
   
   return JsonResponse(dataf)
   #return render(request, "jquery_ajax.html", {'data': data})

   