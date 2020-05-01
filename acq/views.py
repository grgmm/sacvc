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

from django.views.generic import ListView
from django.views.generic.detail import DetailView
from django.views.generic.edit import CreateView
from django.views.generic.edit import UpdateView
from django.views.generic.edit import DeleteView
from django.urls import reverse_lazy

from .models import PatioTanque
from .models import PatioTanqueForm
from django.http import HttpResponseRedirect
from django.shortcuts import redirect
from django.shortcuts import render
from django.urls import reverse
from django.shortcuts import get_object_or_404





def lista(request):
   tags = Tag.objects.all()
   json_data = []
   n=0
    
    
   with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json 
     json_data = json.loads(json.dumps(data_file.read()))
     data_file.close()


  

   return  HttpResponse(render(request, "lista.html", {'json_data': json_data}))


def actualizar(request):
   
   with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json
      dataf = json.loads(data_file.read())
      data_file.close()
   
   return JsonResponse(dataf)



class patiotanquelist(ListView): #LISTADO DE pATIOS DE TANQUES O TERMINALES DE ALMACENAMINTO

    model = PatioTanque
    template_name = 'acq/list_tf/list_tf.html'



#def add_patiotanque(request): #AGREGAR PATIO DE TANQUE FORMULARIO (FORMULARIO)
    #if request.method == 'POST':
        #form = PatioTanqueForm(request.POST)
        #if form.is_valid():
            #new_patiotanque = form.save()

            #return HttpResponseRedirect(reverse('uacq:list_tf'))
    #else:
        #form = PatioTanqueForm()

    #return render(request, 'acq/add_tf/patiotanque_form.html', {'form': form})
class PatiotanqueAdd(CreateView):
    model = PatioTanque
    fields = ['Nombre', 'Descriptor',]
    template_name = 'acq/add_tf/add_tf.html'
    success_url = reverse_lazy('uacq:list_tf') 





class PatiotanqueDelete(DeleteView):
    model = PatioTanque
    success_url = reverse_lazy('uacq:list_tf')  
    template_name = 'acq/del_tf/del_tf.html'



class PatiotanqueDetail(DetailView):
    model = PatioTanque
    template_name = 'acq/detail_tf/detail_tf.html'


class PatiotanqueUpdate(UpdateView):
  model = PatioTanque 
  fields = ['Nombre', 'Descriptor']
  template_name = 'acq/edit_tf/edit_tf.html' 
  success_url = reverse_lazy('uacq:list_tf' )