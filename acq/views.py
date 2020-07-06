from django.shortcuts import render
from django.http import HttpResponse
import socket
import json

from django.http import JsonResponse
from .models import Tag, Tk, PatioTanque

from django.views.generic import ListView
from django.views.generic.detail import DetailView
from django.views.generic.edit import CreateView
from django.views.generic.edit import UpdateView
from django.views.generic.edit import DeleteView
from django.urls import reverse_lazy
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


class patiotanquelist(ListView): #LISTADO DE PATIOS DE TANQUES O TERMINALES DE ALMACENAMINTO

    model = PatioTanque
    template_name = 'acq/list_tf/list_tf.html'


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



class tklist(ListView): #LISTADO TANQUES DE UN TERMINAL

    model = Tk
    template_name = 'acq/list_tk/list_tk.html'


class TkAdd(CreateView):
    model = Tk
    fields = ['Nombre', 'Descriptor',]
    template_name = 'acq/add_tk/add_tk.html'
    success_url = reverse_lazy('uacq:list_tk')


class TkDelete(DeleteView):
    model = Tk
    success_url = reverse_lazy('uacq:list_tk')  
    template_name = 'acq/del_tk/del_tk.html'


class TkDetail(DetailView):
    model = Tk
    template_name = 'acq/detail_tk/detail_tk.html'


class TkUpdate(UpdateView):
  model = Tk 
  fields = ['Nombre', 'Descriptor']
  template_name = 'acq/edit_tk/edit_tk.html' 
  success_url = reverse_lazy('uacq:list_tk' )