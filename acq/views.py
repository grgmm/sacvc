from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
import socket
import json

from django.http import JsonResponse
from .models import Tag, Tk, PatioTanque
from datetime import timedelta, datetime



from django.views.generic import ListView
from django.views.generic.detail import DetailView
from django.views.generic.edit import CreateView
from django.views.generic.edit import UpdateView
from django.views.generic.edit import DeleteView
from django.views import View
from django.views.generic import View
from django.urls import reverse_lazy
from django.http import HttpResponseRedirect
from django.shortcuts import redirect
from django.shortcuts import render
from django.urls import reverse
from django.shortcuts import get_object_or_404
from django.core.files.storage import FileSystemStorage

from django.http import HttpResponseRedirect
from django.shortcuts import render,  get_object_or_404


import csv
from django.core.validators import DecimalValidator, ValidationError
from django.core.exceptions import ValidationError, ValidationError
import pandas as pd
from .validaciones import validar_parametro_tct as valida



def actualizar(request):
   
   with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json
      dataf = json.loads(data_file.read())
      data_file.close()
   
   return JsonResponse(dataf)


def tct_tmp(request):
   
   with open ('/home/morenomx/solucionesweb/sacvc/media/tct_tmp/tct_tmp.json', encoding='utf-8') as data_tct: #abre un archivo json
      datatct = json.loads(data_tct.read())
      data_tct.close()
   
   return JsonResponse(datatct)



def tct_validado(request):
   
   with open ('/home/morenomx/solucionesweb/sacvc/media/tct/csv_sacv01_5tPkArK.csv', encoding='utf-8') as data_file: #abre un archivo json
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

    def get_queryset(self):
      qs = super(tklist, self).get_queryset()
      #print(qs)
      filtro= qs.filter(id_patioTanque__exact=self.kwargs['exp'])
      #print(filtro)
      return(filtro)



class TkAdd(CreateView):
    model = Tk
    fields = ['Nombre', 'Descriptor', 'id_patioTanque',] 
    template_name = 'acq/add_tk/add_tk.html'
    success_url = reverse_lazy('uacq:list_tf')

    
class TkDelete(DeleteView):
    model = Tk
    success_url = reverse_lazy('uacq:list_tf')
    template_name = 'acq/del_tk/del_tk.html'



class TkDetail(DetailView):
    model = Tk
    template_name = 'acq/detail_tk/detail_tk.html'
    fields = ['Nombre', 'Descriptor', 'id_patioTanque', 'fecha_subida_tct']



class TkUpdate(UpdateView):
  model = Tk 
  fields = ['Nombre', 'Descriptor',]
  template_name = 'acq/edit_tk/edit_tk.html'
  
  success_url = reverse_lazy('uacq:list_tf' )


class Validar_Tct(UpdateView):
    model = Tk
    template_name = 'acq/detail_tk/validar_tct.html'
    fields = ['tct_archivo', 'Descriptor_tct',]
    success_url = reverse_lazy('uacq:list_tf')

    def post(self, request, *args, **kwargs):
        self.object = self.get_object()
        request.POST = request.POST.copy()

       
        if request.POST.get("btn_editar_tct_salir", ""):
          response= 'Editar Archivo Tct / Salir'
        print(response)
        return super(Validar_Tct, self).post(request, **kwargs)

        


def integridad_TCT(request, pk):
  nivel_minimo=0
  nivel_maximo =100
  volumen_minimo=0
  volumen_maximo= 1000000
  tct_valido=False


  try:
      obj = Tk.objects.get(pk=pk)
  
  except Tk.DoesNotExist:
    raise Http404("Tk no existe")

  file=obj.tct_archivo.path



  #response = HttpResponse(mimetype='text/csv')
  #response['Content-Disposition'] = 'attachment; filename=obj.tct_archivo.path'



    #return render(request, 'polls/detail.html', {'poll': p})

  DataFrame=pd.read_csv(file, delimiter='\t') #abre el csv tc y lo pasa a un dataframe
    

  for i in range(0, len(DataFrame)):
         
    nivel=valida(DataFrame.iloc[i]['nivel'],nivel_minimo,nivel_maximo)
    volumen=valida(DataFrame.iloc[i]['volumen'],volumen_minimo,volumen_maximo)
    json_tmp= {"registro": i, "nivel":nivel, "volumen":volumen,}
    print(json_tmp)
    print(file)
    tct_valido =True
    


  
    