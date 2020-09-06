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



def lista(request):
   tags = Tag.objects.all()
   json_data = []
   n=0    
    
   with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: #abre un archivo json 
     json_data = json.loads(json.dumps(data_file.read()))
     data_file.close()


  

   return  HttpResponse(render(request, "lista.html", {'json_data': json_data}))





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
        


class integridad_TCT(DetailView):

    model = Tk
    template_name = 'acq/detail_tk/integridad_tct.html'
    fields = ['tct_archivo', ]

    #queryset = Tk.objects.all()

    def get_object(self):
        obj = super().get_object()
        # Record the last accessed date
        value_vol = 0
        value_niv = 0
        obj.tct_vol=0
        obj.tct_nivel = 0
        nivel=0
        volumen=0
        nivel_minimo = 0
        nivel_maximo = 40
        volumen_minimo=0
        volumen_maximo=999999
       
        dataframe=pd.read_csv(obj.tct_archivo.path, delimiter='\t')
        #print(dataframe.dtypes)
        #print(dataframe)
        

        for i in range(0, len(dataframe)):


          #print(dataframe.iloc[i]['nivel'])
          #print(dataframe.iloc[i]['volumen'])
          
          nivel=valida(dataframe.iloc[i]['nivel'],nivel_minimo,nivel_maximo)
          volumen=valida(dataframe.iloc[i]['volumen'],volumen_minimo,volumen_maximo)
          #print(i)
          #print (i,nivel,volumen) 
          print('Nivel:%f Volumen: (%f)' % (nivel,volumen))
          
        
        return(nivel,volumen)



         
          
   

      


    
    



   


     


  


  
    






