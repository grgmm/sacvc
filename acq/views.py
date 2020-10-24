from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
import socket
import json

from django.http import JsonResponse 
from .models import Tag, Tk, PatioTanque,Tct
from datetime import timedelta, datetime
from django.template.response import TemplateResponse



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
from django.shortcuts import get_object_or_404, Http404
from django.core.files.storage import FileSystemStorage

from django.http import HttpResponseRedirect
from django.shortcuts import render,  get_object_or_404


import csv
from django.core.validators import DecimalValidator, ValidationError
from django.core.exceptions import ValidationError, ValidationError
import pandas as pd
from .validaciones import validar_parametro_tct as valida
from django.utils import timezone




def actualizar(request):
    with open ('acq/datos.json', encoding='utf-8')
  # with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json
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
    fields = ['tct_archivo', 'Descriptor_tct', 'fecha_subida_tct']
    success_url = reverse_lazy('uacq:list_tf')

    

    def get(self, request, *args, **kwargs):
      obj = self.get_object()
      fs = FileSystemStorage()
      
      
      
    
        
      if not (bool(obj.tct_archivo)):
        print('sin archivo')
        setattr(obj,'tctvalido', False)
        setattr(obj,'Descriptor_tct', '')
        setattr(obj,'fecha_subida_tct',None )
      
      else:

        TimestampTCT=fs.get_created_time(obj.tct_archivo.path)               
            
        setattr(obj,'fecha_subida_tct',TimestampTCT)

      
      obj.save()



      request.GET = request.GET.copy()
      print(request.GET)
      self.objx = self.get_object()
      if request.GET.get("btn_guardar_BD", ""):
        print('ayudame dios mio')


          
      return super(Validar_Tct, self).get(request, **kwargs)
    

    def post(self, request, *args, **kwargs):
        
        self.obj = self.get_object()

        
        request.POST = request.POST.copy()


       
        if request.POST.get("btn_guardar_tct_salir", ""):
          
      

          response= 'Editar Archivo Tct / Salir'

            
        return super(Validar_Tct, self).post(request, **kwargs)


def integridad_TCT(request, pk):
  nivel_minimo=0
  nivel_maximo =100
  volumen_minimo=0
  volumen_maximo= 1000000
  tct_valido=False
  ruta_tct_valido='/home/morenomx/solucionesweb/sacvc/media/tct/tct_valido.json'



  try:
      obj = Tk.objects.get(pk=pk)
      print(obj.fecha_subida_tct)

      
      
  except Tk.DoesNotExist:
    raise Http404("Tk no existe")
  

  file=obj.tct_archivo.path



  DataFrame=pd.read_csv(file, delimiter='\t', ) #abre el csv tc y lo pasa a un dataframe

  
  
  json_temp = {}
  json_temp = []


  register_range=[]

  for i in range(0, len(DataFrame)):
         
    nivel=valida(DataFrame.iloc[i]['nivel'],nivel_minimo,nivel_maximo)
    volumen=valida(DataFrame.iloc[i]['volumen'],volumen_minimo,volumen_maximo)
    json_temp.append({ 'registro': i,'nivel':nivel, 'volumen':volumen})
    register_range.append(i)
  
  setattr(obj,'tctvalido', True)
  
  obj.save()
    
 
  return TemplateResponse(request, 'acq/detail_tk/integridad_tct.html', {'data':json_temp,})



def guardar_TCT_BD(request, pk): 


  try:
    #obj1 = Tct.objects.get(pk=pk)
    obj_tk =  Tk.objects.get(pk=pk)
    Tct.objects.all().delete()

    file=obj_tk.tct_archivo.path
    DataFrame=pd.read_csv(file, delimiter='\t', ) #abre el csv tc y lo pasa a un dataframe
    #nivel=DataFrame.iloc[3]['nivel']
    
    for i in range(0, len(DataFrame)):
     Tct.objects.create(id=None,  Lt0=DataFrame.iloc[i]['nivel'], Tov0=DataFrame.iloc[i]['volumen'], id_tk=obj_tk)

     
         
  except Tk.DoesNotExist:
    raise Http404("Tk no existe")
    Tct().save

  return HttpResponse('Hello, World')
