from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
import json
from django.http import JsonResponse
from .models import Tag, Tk, PatioTanque,Tct, Analogico, Digital, UserProfile, AOR
from django.template.response import TemplateResponse
from django.views.generic import ListView, FormView, TemplateView, RedirectView
from django.views.generic.detail import DetailView
from django.views.generic.edit import CreateView
from django.views.generic.edit import UpdateView
from django.views.generic.edit import DeleteView
from django.views.generic import View
from django.urls import reverse_lazy
from django.http import HttpResponseRedirect
from django.shortcuts import redirect
from django.shortcuts import render
from django.urls import reverse
from django.shortcuts import get_object_or_404, Http404
from django.core.files.storage import FileSystemStorage
from django.conf import settings
from django.http import HttpResponseRedirect
from django.shortcuts import render,  get_object_or_404
import sys
import csv
from django.core.validators import DecimalValidator, ValidationError
from django.core.exceptions import ValidationError
import pandas as pd
from .validaciones import validar_parametro_tct as valida
from django.dispatch import receiver
from django.db.models.signals import post_save
from django.contrib.auth import logout
from django.contrib.auth import login
from django.contrib.auth import authenticate
from django.contrib.auth.forms import AuthenticationForm, PasswordChangeForm
from django.contrib.auth.models import User as usuario, Group
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.views import PasswordChangeView
from django.contrib.auth import views as auth_views

def actualizar(request):

   with open ('/home/morenomx/solucionesweb/sacvc/datos.json', encoding='utf-8') as data_file: # OJO MEJORAR
      dataf = json.loads(data_file.read())
      data_file.close()
   return JsonResponse(dataf)

class current_data(ListView):
  model = Tk
  success_url = reverse_lazy('uacq:list_tf')
  template_name = 'acq/current_data/current_data.html'

class patiotanquelist(ListView):  #VALIDADO PRELIMINAR
     #LISTADO DE PATIOS DE TANQUES O TERMINALES DE ALMACENAMIENTO

    model = PatioTanque
    template_name = 'acq/list_tf/list_tf.html'

#EL SIGUIENTE BLOQUE VALIDA USUARIO CON PERFIL SUPERVISOR SINO CIERRA LA SESIÓN
    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
    # this should print all group names for the user
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(patiotanquelist, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')

class PatiotanqueAdd(CreateView): #VALIDADO PRELIMINAR
    model = PatioTanque
    fields = ['Nombre', 'Descriptor',]
    template_name = 'acq/add_tf/add_tf.html'
    success_url = reverse_lazy('uacq:list_tf')

    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
    # this should print all group names for the user
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(PatiotanqueAdd, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')

#EL SIGUIENTE BLOQUE VALIDA USUARIO CON PERFIL SUPERVISOR SINO CIERRA LA SESIÓN

class PatiotanqueDelete(DeleteView):
    model = PatioTanque
    success_url = reverse_lazy('uacq:list_tf')
    template_name = 'acq/del_tf/del_tf.html'

    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
    # this should print all group names for the user
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(PatiotanqueDelete, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')

class PatiotanqueDetail(DetailView):
    model = PatioTanque
    template_name = 'acq/detail_tf/detail_tf.html'

    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(PatiotanqueDetail, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')

class PatiotanqueUpdate(UpdateView):
  model = PatioTanque
  fields = ['Nombre', 'Descriptor']
  template_name = 'acq/edit_tf/edit_tf.html'
  success_url = reverse_lazy('uacq:list_tf' )

  def get(self, request, *args, **kwargs):
      if request.user.is_authenticated:

          filtro_usuario = Group.objects.filter(user = request.user)
          for g in filtro_usuario:
                  print(g.name)

          if (not g.name =='supervisores'):
              print('Usuario sin Perfil')

              return redirect('/sacvc/Menu')
          else:
               return super(PatiotanqueUpdate, self).get(request, *args, **kwargs)

      else:
          return redirect('/sacvc/logout')

class tklist(ListView): #LISTADO TANQUES DE UN TERMINAL
    #Vista en modo supervisión
    model = Tk
    template_name = 'acq/list_tk/list_tk.html'

    def get_queryset(self):
      qs = super(tklist, self).get_queryset()
      #print(qs)
      filtro= qs.filter(id_patioTanque__exact=self.kwargs['exp'])
      patio=self.kwargs['exp']

      fs = FileSystemStorage(location=settings.MEDIA_ROOT+'/Data')
      ruta_Data=fs.location

      add_tk_iniciales ={'Nombre':'',
          'Descriptor':'',
          'id_patioTanque':patio,}


      try:
            with fs.open(ruta_Data+'/tk_iniciales.json', mode= 'w') as file:

                file.write(json.dumps(add_tk_iniciales)) #Data en cache
      except:
                print("Error inesperado:", sys.exc_info()[0])


      return(filtro)

    def get(self, request, *args, **kwargs):
          if request.user.is_authenticated:

              filtro_usuario = Group.objects.filter(user = request.user)
              for g in filtro_usuario:
                      print(g.name)

              if (not g.name =='supervisores'):
                  print('Usuario sin Perfil')

                  return redirect('/sacvc/Menu')
              else:
                   return super(tklist, self).get(request, *args, **kwargs)

          else:
              return redirect('/sacvc/logout')

class TkAdd(CreateView): #VALIDADO PRELIMINAR
    model = Tk
    fields = ['Nombre', 'Descriptor', 'id_patioTanque','id_aor',]
    template_name = 'acq/add_tk/add_tk.html'

    def get_success_url(self):    #OJO ESTE BLOQUE SIRVE PARA DIRECCIONAR LA NAVEGACION
                                  #DE REGRESO DE LA VISTA
            print(self.object.id_patioTanque.pk)

            success_url=('/sacvc/list_tk/'+str(self.object.id_patioTanque.pk))
            return(success_url)


    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        fs = FileSystemStorage(location=settings.MEDIA_ROOT+'/Data')
        ruta_Data=fs.location
        try:
            with fs.open(ruta_Data+'/tk_iniciales.json', mode= 'r') as data_file:

                self.initial = json.loads(data_file.read())
                print(self.initial)

                context['patio'] = (self.initial['id_patioTanque'])

        except:
                print("Error inesperado:", sys.exc_info()[0])



        return context


    #EL SIGUIENTE BLOQUE VALIDA USUARIO CON PERFIL SUPERVISOR SINO CIERRA LA SESIÓN

    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            if not usuario.objects.filter(pk=request.user.pk, groups__name='supervisores').exists():
                print('usuario sin perfil adecuado cerrando sesión')
                return redirect('/sacvc/logout')
            else:

                fs = FileSystemStorage(location=settings.MEDIA_ROOT+'/Data')
                ruta_Data=fs.location

                try:
                    with fs.open(ruta_Data+'/tk_iniciales.json', mode= 'r') as data_file:

                        self.initial = json.loads(data_file.read())

                except:
                    print("Error inesperado:", sys.exc_info()[0])

                return super(TkAdd, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')


    @receiver(post_save, sender=Tk)  #CREA LA SEÑAL DE GUARDADO
    def create_Tk(sender, instance, created, **kwargs):#FUNCION QUE CAPTURA LA SEÑAL DE GUARDADO DE TK Y TRABAJA CON ESA INSTANCIA DE TK
        #INICIALIZA EL TANQUE CON SUS PARAMETROS (PT,LT,TT, TOV) #FALTA INCLUIR AYS, NSV, ENTRE OTROS.
        if created:
            qtk= Tk.objects.count()
            Analogico.objects.create(Nombre= instance.Nombre+'_lt' ,
             Descriptor='NIVEL DEL TANQUE'+ instance.Nombre  ,
             Unidad= 'pie',
             direccion=(qtk-1)*10+1,
             id_Tk=instance,
             TipoVariable= 'B',
             direccion_campo= 100+((qtk-1)*10+1),
             etiqueta1='lt')

            Analogico.objects.create(Nombre= instance.Nombre +'_pt',
             Descriptor='PRESION DEL TANQUE'+ instance.Nombre,
             Unidad = 'psi',
             direccion=(qtk-1)*10+3,
             id_Tk=instance,
             direccion_campo= 100+(qtk-1)*10+3,
             TipoVariable= 'B',
             etiqueta1='pt')

            Analogico.objects.create(Nombre= instance.Nombre +'_tt',
             Descriptor='TEMPERATURA DEL TANQUE'+ instance.Nombre,
             Unidad= 'F',
             direccion=(qtk-1)*10+5,
             id_Tk=instance,
             direccion_campo= 100+(qtk-1)*10+5,
             TipoVariable= 'B',
             etiqueta1='tt')


            Analogico.objects.create(Nombre= instance.Nombre +'_lta',
             Descriptor='NIVEL DE AGUA LIBRE '+ instance.Nombre,
             Unidad= 'pie',
             direccion=(qtk-1)*10+7,
             id_Tk=instance,
             direccion_campo= 100+(qtk-1)*10+7,
             TipoVariable= 'B',
             etiqueta1='lta',)

            Analogico.objects.create(Nombre= instance.Nombre +'_TOV',
             Descriptor='VOLUMEN TOTAL OBSERVADO DEL TANQUE '+ instance.Nombre,
             Unidad= 'BLS',
             direccion=(qtk-1)*10+9,
             id_Tk=instance,
             direccion_campo= 100+(qtk-1)*10+9,
             TipoVariable= 'C',
             etiqueta1='TOV',)

class TkDelete(DeleteView):
    model = Tk
    template_name = 'acq/del_tk/del_tk.html'

    def get_success_url(self):
            print(self.object.id_patioTanque.pk)

            success_url=('/sacvc/list_tk/'+str(self.object.id_patioTanque.pk))
            return(success_url)


    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(TkDelete, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')

class TkDetail(DetailView):
    model = Tk
    template_name = 'acq/detail_tk/detail_tk.html'
    fields = ['Nombre', 'Descriptor', 'id_patioTanque', 'fecha_subida_tct']

    def get_success_url(self):
            print(self.object.id_patioTanque.pk)

            success_url=('/sacvc/list_tk/'+str(self.object.id_patioTanque.pk))
            return(success_url)

    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(TkDetail, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')

class TkUpdate(UpdateView):
  model = Tk
  fields = ['Nombre', 'Descriptor','id_aor',]
  template_name = 'acq/edit_tk/edit_tk.html'

  def get_success_url(self):
         print(self.object.id_patioTanque.pk)

         success_url=('/sacvc/list_tk/'+str(self.object.id_patioTanque.pk))
         return(success_url)


  def get(self, request, *args, **kwargs):
      if request.user.is_authenticated:

          filtro_usuario = Group.objects.filter(user = request.user)
          for g in filtro_usuario:
                  print(g.name)

          if (not g.name =='supervisores'):
              print('Usuario sin Perfil')

              return redirect('/sacvc/Menu')
          else:
               return super(TkUpdate, self).get(request, *args, **kwargs)

      else:
          return redirect('/sacvc/logout')

class Validar_Tct(UpdateView):
    model = Tk
    template_name = 'acq/detail_tk/validar_tct.html'
    fields = ['tct_archivo', 'Descriptor_tct', 'fecha_subida_tct']
    success_url = reverse_lazy('uacq:list_tf')

    def get(self, request, *args, **kwargs):
      obj = self.get_object()
      fs = FileSystemStorage()

      if not (bool(obj.tct_archivo)):
        print('no hay archivo tct en en model Tk actual')
        setattr(obj,'tctvalido', False)
        setattr(obj,'Descriptor_tct', '')
        setattr(obj,'fecha_subida_tct',None )

      else:

        TimestampTCT=fs.get_created_time(obj.tct_archivo.path)

        setattr(obj,'fecha_subida_tct',TimestampTCT)

      obj.save()

      return super(Validar_Tct, self).get(request, **kwargs)


    def post(self, request, *args, **kwargs):

        self.obj = self.get_object()

        request.POST = request.POST.copy()
        if request.POST.get("btn_guardar_tct_salir", ""):
          response= 'Editar Archivo Tct / Salir'
        return super(Validar_Tct, self).post(request, **kwargs)


    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(Validar_Tct, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')

def integridad_TCT(request, pk):

  nivel_minimo=0.0
  nivel_maximo =100.0
  volumen_minimo=0.0
  volumen_maximo= 1000000.0
  tct_valido=False

  try:
      obj = Tk.objects.get(pk=pk)
      print(obj.fecha_subida_tct)

  except Tk.DoesNotExist:
    raise Http404("Tk no existe")

  file=obj.tct_archivo.path

  DataFrame=pd.read_csv(file, delimiter='\t', ) #abre el csv tc y lo pasa a un dataframe
  json_temp = []

  for i in range(0, len(DataFrame)):

    nivel_format=format(DataFrame.iloc[i]['nivel']).replace(',','.')
    volumen_format=format(DataFrame.iloc[i]['volumen']).replace(',','.')

    nivel=valida(float(nivel_format),nivel_minimo,nivel_maximo)
    volumen=valida(float(volumen_format),volumen_minimo,volumen_maximo)
    json_temp.append({ 'registro': i,'nivel':nivel, 'volumen':volumen})

  setattr(obj,'tctvalido', True)

  obj.save()

  return TemplateResponse(request, 'acq/detail_tk/integridad_tct.html', {'data':json_temp,'pk':pk})

def guardar_TCT_BD(request, pk):

  try:
    #obj1 = Tct.objects.get(pk=pk)
    obj_tk =  Tk.objects.get(pk=pk)

    if obj_tk.tctvalido:
        Tct.objects.all().delete()
        file=obj_tk.tct_archivo.path
        DataFrame=pd.read_csv(file, delimiter='\t', ) #abre el csv tc y lo pasa a un dataframe
        for i in range(0, len(DataFrame)):
            nivel_format=format(DataFrame.iloc[i]['nivel']).replace(',','.')
            volumen_format=format(DataFrame.iloc[i]['volumen']).replace(',','.')
            nivel=float(nivel_format)
            volumen=float(volumen_format)
            Tct.objects.create(id=None, Lt0=nivel, Tov0=volumen, id_tk=obj_tk)

  except Tk.DoesNotExist:
    raise Http404("Tk no existe")
    Tct().save

  return HttpResponse('Guardado exitoso en BD')

def Valores_Actuales(request):

       # do something with the your data
       fs = FileSystemStorage(location=settings.MEDIA_ROOT+'/Data')
       ruta_Data=fs.location   #RUTA DE BUFFER

       data_fr = {}
       with fs.open(ruta_Data+'/Buffer_Datos_Calculados.json', mode = 'r') as data_file_r:
           data_fr = json.loads(data_file_r.read())
           #INSTANCIANDO tk,tag

       TAG=Tag.objects.get(pk=data_fr['IDTAG'])
       #print(TAG)
       idtk=TAG.id_Tk.pk

       TK=Tk.objects.get(pk=idtk)

       TAG_VALUE=data_fr['TAG_VALUE']
       TIMESTAMP=data_fr['TIMESTAMP']

       data={'TK':'TANQUE1',
       'LT':'1000',
       'PT':'3000',
       'TT':'5000',
       'TOV':'2000',
        }
       return TemplateResponse(request, 'acq/detail_tk/Valores_Actuales.html', {'data':data})

class Menu(View): #VALIDADO PRELIMINAR

    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            if usuario.objects.filter(pk=request.user.pk, groups__name='supervisores').exists():
                print('AMBIENTE SUPERVISOR')
                return render(request, "acq/menus/menu_supervisor.html")
                #return HttpResponse('AMBIENTE SUPERVISOR')

            if usuario.objects.filter(pk=request.user.pk, groups__name='operativos').exists():
                print('AMBIENTE OPERADOR')

                #return HttpResponse('AMBIENTE OPERADOR')
                return render(request, "acq/menus/menu_operativo.html")


            else:
                return redirect('/sacvc/logout')

        else:
                return redirect('/sacvc/logout')

class LoginView(FormView): #VALIDADO PRELIMINAR
    form_class = AuthenticationForm
    template_name = "acq/authent/login.html"
    success_url =  reverse_lazy('sacvc:Menu')



    def dispatch(self, request, *args, **kwargs):

        if request.user.is_authenticated:
            #print(request.user.is_authenticated)

            return HttpResponseRedirect('sacvc:Menu' )
            #return HttpResponseRedirect(self.get_success_url())

        else:

            return super(LoginView, self).dispatch(request, *args, **kwargs)

    def form_valid(self, form):
        login(self.request, form.get_user())
        return super(LoginView, self).form_valid(form)

class LogoutView(RedirectView): #VALIDADO PRELIMINAR
    pattern_name = 'sacvc:login'

    def get(self, request, *args, **kwargs):
        logout(request)
        return super(LogoutView, self).get(request, *args, **kwargs)

def welcome(request):
    return redirect('/sacvc/logout')

class usuarioslist(ListView):  #VALIDADO PRELIMINAR

    model = usuario
    template_name = 'acq/list_user/list_user.html'

    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
    # this should print all group names for the user
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(usuarioslist, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')

class usuariosedit(UpdateView):
  model = usuario
  template_name = 'acq/edit_user/edit_user.html'
  fields = ['username','first_name', 'last_name', 'email', 'groups',]
  success_url = reverse_lazy('uacq:list_user' )


  def get(self, request, *args, **kwargs):


      if request.user.is_authenticated:

          filtro_usuario = Group.objects.filter(user = request.user)
          for g in filtro_usuario:
  # this should print all group names for the user
                  print(g.name)

          if (not g.name =='supervisores'):
              print('Usuario sin Perfil')

              return redirect('/sacvc/Menu')
          else:


               return super(usuariosedit, self).get(request, *args, **kwargs)


      else:
          return redirect('/sacvc/logout')

class edit_patio_user(UpdateView):
  model = UserProfile
  template_name = 'acq/edit_user/edit_patio_user.html'
  fields = ['user','patios']
  success_url = reverse_lazy('uacq:list_user' )

  def get(self, request, *args, **kwargs):
      if request.user.is_authenticated:

          filtro_usuario = Group.objects.filter(user = request.user)
          for g in filtro_usuario:
                  print(g.name)

          if (not g.name =='supervisores'):
              print('Usuario sin Perfil')

              return redirect('/sacvc/Menu')
          else:


               return super(edit_patio_user, self).get(request, *args, **kwargs)

      else:
          return redirect('/sacvc/logout')



class edit_aor_user(UpdateView):
  model = UserProfile
  template_name = 'acq/edit_user/edit_aor_user.html'
  fields = ['user','aor']
  success_url = reverse_lazy('uacq:list_user' )

  def get(self, request, *args, **kwargs):
      if request.user.is_authenticated:

          filtro_usuario = AOR.objects.filter(user = request.user)
          for g in filtro_usuario:
                  print(g.name)

          if (not g.name =='supervisores'):
              print('Usuario sin Perfil')

              return redirect('/sacvc/Menu')
          else:


               return super(edit_aor_user, self).get(request, *args, **kwargs)

      else:
          return redirect('/sacvc/logout')

class usuariosadd(CreateView):
      model = usuario
      fields = ['username','first_name','last_name', 'password', 'email' ]
      template_name = 'acq/add_user/add_user.html'
      success_url = reverse_lazy('uacq:list_user')


      def get(self, request, *args, **kwargs):
           if request.user.is_authenticated:

               filtro_usuario = Group.objects.filter(user = request.user)
               for g in filtro_usuario:
                       print(g.name)

               if (not g.name =='supervisores'):
                   print('Usuario sin Perfil')

                   return redirect('/sacvc/Menu')
               else:


                    return super(usuariosadd, self).get(request, *args, **kwargs)

           else:
               return redirect('/sacvc/logout')


      def post(self, request, *args, **kwargs):

            request.POST = request.POST.copy()
            if  (request.POST['first_name'])=='' or (request.POST['last_name']==''):

                mensajes = 'RELLENE LOS CAMPOS REQUERIDOS'

                return redirect('/sacvc/add_user')

            else:

                return super(usuariosadd, self).post(request, **kwargs)

class usuariosdelete(DeleteView):
    model = usuario
    success_url = reverse_lazy('uacq:list_user')
    template_name = 'acq/del_user/del_user.html'


    def get(self, request, *args, **kwargs):
         if request.user.is_authenticated:

             filtro_usuario = Group.objects.filter(user = request.user)
             for g in filtro_usuario:
                     print(g.name)

             if (not g.name =='supervisores'):
                 print('Usuario sin Perfil')

                 return redirect('/sacvc/Menu')
             else:
                  return super(usuariosdelete, self).get(request, *args, **kwargs)

         else:
             return redirect('/sacvc/logout')

class usuariodetail(DetailView):
        model = UserProfile
        fields= ['patios']
        template_name = 'acq/detail_user/detail_user.html'

        def get_context_data(self, **kwargs):

            context = super().get_context_data(**kwargs)
            filtro_usuario_grupos = Group.objects.filter(user = self.object.pk)

            for g in filtro_usuario_grupos:
                    #print(g.name)
                    context['grupos'] =g.name
                    #print(context)
            qs = self.object.patios.all()
            qsaor= self.object.aor.all()
            patiosuser=[]
            aoruser=[]


            for patio_inst in qs:
                patiosuser.append(patio_inst.Nombre)
                context['patiosuser']=patiosuser

            for aor_inst in qsaor:
                aoruser.append(aor_inst.Nombre)
                context['aoruser']=aoruser
            #print(patiosuser)

            return context

        def get(self, request, *args, **kwargs):
            if request.user.is_authenticated:

                filtro_usuario = Group.objects.filter(user = request.user)

                for g in filtro_usuario:
                        print(g.name)

                if (not g.name =='supervisores'):
                    print('Usuario sin Perfil')

                    return redirect('/sacvc/Menu')
                else:
                     return super(usuariodetail, self).get(request, *args, **kwargs)

            else:
                return redirect('/sacvc/logout')

from django.contrib.auth.mixins import LoginRequiredMixin
class grupo_tk(LoginRequiredMixin, ListView):
  #vista de grupo de tanques en modo operación
  model = Tk
  paginate_by = 6
  success_url = reverse_lazy('uacq:list_tf')
  template_name = 'acq/grupo_tk/grupo_tk.html'
  login_url = '/sacvc/Menu'
  redirect_field_name = '/sacvc/logout'

from .forms.acqforms import users_cambio_clave_form # OJO interesante metodo para
#gestionar los formularios desde un unico archivo que luego se importa

class Cambiar_Clave(FormView):

  template_name = 'acq/edit_user/cambiar_clave.html'
  success_url = reverse_lazy('uacq:list_user' )
  form_class = users_cambio_clave_form

  def post(self, request, *args, **kwargs):
    #self.obj = self.get_object()
    form_class = self.get_form_class()
    form = self.get_form(form_class)
    #print(form)
    context = super(Cambiar_Clave, self).get_context_data(**kwargs)

    context['form'] = form

    request.POST = request.POST.copy()

    if ((request.POST['nueva_clave']) == (request.POST['repita_nueva_clave'])):
            clave_valida = str(request.POST['repita_nueva_clave'])
            print('CLAVE VALIDA')

            u = usuario.objects.get(pk=context['pk'])
            u.set_password(clave_valida)
            u.save()

            context['user']= u
            return redirect('/sacvc/list_user')

    else:
            context['mensajes'] = 'LAS CLAVES NO COINCIDEN'
            print('LAS CLAVES NO COINCIDEN')
            clave_valida=''

    print(clave_valida)

    return self.render_to_response(context)

    def form_valid(self, form):   #OJO VALIDAR APLICACIÓN DE ESTA PARTE
         print('Datos no Válidos')
         return super().form_valid(form)

class Menu_Vistas(View): #VALIDADO PRELIMINAR

    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            if usuario.objects.filter(pk=request.user.pk, groups__name='supervisores').exists():
                print('USUARIO CON PERFIL SUPERVISOR')
                return render(request, "acq/menus/menu_vistas.html")

            if usuario.objects.filter(pk=request.user.pk, groups__name='operativos').exists():
                print('USUARIO CON PERFIL OPERADOR')
                return render(request, "acq/menus/menu_vistas.html")

            else:
                return redirect('/sacvc/logout')

        else:
                return redirect('/sacvc/logout')

class Aor_add(CreateView): #VALIDADO PRELIMINAR
    model = AOR
    fields = ['Nombre', 'Descriptor',]
    template_name = 'acq/add_tf/add_tf.html'
    success_url = reverse_lazy('uacq:list_tf')

    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
    # this should print all group names for the user
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(PatiotanqueAdd, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')

class Aor_edit(UpdateView):
  model = AOR
  template_name = 'acq/edit_user/edit_user.html'
  fields = ['Name','Descriptor','id_patioTanque']
  success_url = reverse_lazy('uacq:list_user' )


  def get(self, request, *args, **kwargs):


      if request.user.is_authenticated:

          filtro_usuario = Group.objects.filter(user = request.user)
          for g in filtro_usuario:
  # this should print all group names for the user
                  print(g.name)

          if (not g.name =='supervisores'):
              print('Usuario sin Perfil')

              return redirect('/sacvc/Menu')
          else:


               return super(Aor_edit, self).get(request, *args, **kwargs)


      else:
          return redirect('/sacvc/logout')


class Aor_list(ListView):  #VALIDADO PRELIMINAR
     #LISTADO DE PATIOS DE TANQUES O TERMINALES DE ALMACENAMIENTO

    model = AOR
    template_name = 'acq/list_aor/list_aor.html'


    def get_queryset(self):
      qs = super(Aor_list, self).get_queryset()
      #print(qs)
      filtro= qs.filter(id_patioTanque__exact=self.kwargs['pk'])
      patio=self.kwargs['pk']

      return(filtro)


#EL SIGUIENTE BLOQUE VALIDA USUARIO CON PERFIL SUPERVISOR SINO CIERRA LA SESIÓN
    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
    # this should print all group names for the user
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(Aor_list, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')


class Aor_del(DeleteView):
    model = AOR
    success_url = reverse_lazy('uacq:list_tf')
    template_name = 'acq/del_tf/del_tf.html'

    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
    # this should print all group names for the user
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(PatiotanqueDelete, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')

class Aor_detail(DetailView):
    model = AOR
    template_name = 'acq/detail_tf/detail_tf.html'


    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:

            filtro_usuario = Group.objects.filter(user = request.user)
            for g in filtro_usuario:
                    print(g.name)

            if (not g.name =='supervisores'):
                print('Usuario sin Perfil')

                return redirect('/sacvc/Menu')
            else:
                 return super(PatiotanqueDetail, self).get(request, *args, **kwargs)

        else:
            return redirect('/sacvc/logout')
