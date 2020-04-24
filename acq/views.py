from django.shortcuts import render
from django.http import HttpResponse
import socket
import json
#from django.core import serializers
#import random
#from umodbus import conf
#from umodbus.client import tcp
#import time
#from datetime import datetime
from django.http import JsonResponse
from .models import Tag
from .models import PatioTanque
from django.views.generic import ListView
from django.views.generic.detail import DetailView
from django.views.generic.edit import CreateView
from django.views.generic.edit import UpdateView
from django.views.generic.edit import DeleteView
from django.urls import reverse_lazy





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



class PatiotanqueList(ListView):

    model = PatioTanque

class PatiotanqueDetail(DetailView):
    model = PatioTanque

 

class PatiotanqueCreation(CreateView):
    model = PatioTanque
    success_url = reverse_lazy('PatioTanque:list')
    fields = ['Nombre',]



class PatiotanqueUpdate(UpdateView):
    model = PatioTanque
    success_url = reverse_lazy('PatioTanque:list')
    fields = ['Nombre',]


class PatiotanqueDelete(DeleteView):
    model = PatioTanque
    success_url = reverse_lazy('PatioTanque:list')