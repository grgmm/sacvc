from __future__ import unicode_literals
from django.db import models
from django.contrib.auth.models import PermissionsMixin
from django.contrib.auth.base_user import AbstractBaseUser
from django.utils.translation import ugettext_lazy as _ 
import time
#from datetime import datetime #Borrar
#import random #Borrar
from django.contrib.postgres.fields import JSONField
#import random  #Borrar
#import time #Borrar
import json
#import socket #Borrar
#import sys #Borrar
#from umodbus import conf #Borrar
#from umodbus.client import tcp #Borrar
from django.forms import ModelForm
from datetime import datetime
from datetime import timedelta


# Create your models here.

#MODELOS DE PATIO DE TANQUES

class PatioTanque(models.Model):
    
    Nombre = models.CharField(max_length=30,unique=True)
    Descriptor = models.CharField(max_length=120,default= '',)

    class Meta:
        ordering = ["pk"]

    
    def __str__(self):
    
       return '%s' % (self.Nombre, self.Descriptor)



class PatioTanqueForm(ModelForm): #formulario agregar instalacion OJO SACAR DE ESTE MODULO

    class Meta:
        model = PatioTanque
        fields = ('Nombre','Descriptor')


#MODELOS DE TANQUES

class Tk(models.Model):
   
    id_patioTanque = models.ForeignKey(PatioTanque, on_delete=models.CASCADE)      
    nombre = models.CharField(max_length=30)

    TIPOTanque_CHOICES = [
    ('CV', 'Cilindrico Vertical'),
    ('CH', 'Cilindrico Horizontal'),
    ('ES', 'Esferico'),
    ('TF', 'Techo  Flotante'),
    ]
    tipo_de_tk = models.CharField(
      max_length = 2, choices=TIPOTanque_CHOICES, default= 'TF',)


    
    def __str__(self):
    
       return '%s' % (self.nombre,)


#MODELOS DE FACTORES DE TANQUES

class Factor(models.Model):
    
    id_tk = models.ForeignKey(Tk, on_delete=models.CASCADE)
    ctsh = models.FloatField(default = 1.0)
    fra = models.FloatField(default = 1.0)
    ctpl = models.FloatField(default = 1.0)

    def __str__(self):
    
       return '%d' % (self.id,)

#MODELOS TABLA CERTIFICADA (DE AFORO) DE TANQUES

class Tct(models.Model):
    id_tk = models.ForeignKey(Tk, on_delete=models.CASCADE)    
    Lt0 = models.DecimalField(max_digits= 3, decimal_places = 3)
    Lt1 = models.DecimalField(max_digits= 3, decimal_places = 3)
    Lt2 = models.DecimalField(max_digits= 3, decimal_places = 3)
    Tov = models.FloatField(default = 1.0)
    
      
    def __str__(self):
    
       return '%d' % (self.id,)

       


       #MODELOS DE COMUNICACION


class MbMaestro(models.Model):
 
  Vel_CHOICES = [    
   ('A', 9600),
   ('B', 19200),
   ('C', 38400),
    ]

  PARIDAD_CHOICES = [
    ('PAR','Par'),
    ('IMPAR', 'Impar'),]

  TIPOCOMM_CHOICES = [
    ('TCP', 'MBTCP'),
    ('RTU', 'MBRTU'),
   ]



  Puerto = models.CharField(max_length=3, default = 's0')
  Velocidad = models.IntegerField(choices = Vel_CHOICES, default= 'A')
  Paridad = models.CharField(max_length=5, choices = PARIDAD_CHOICES, default= 'PAR')
  Reintentos = models.IntegerField(default=3)
  Tipo = models.CharField(max_length=3, choices=TIPOCOMM_CHOICES, default= 'TCP')
  IdDevice = models.IntegerField(default=1)

  def __str__(self):
    
       return '%d' % (self.id,)


class MbEsclavo(models.Model):
   
  Vel_CHOICES = [    
   ('A', 9600),
   ('B', 19200),
   ('C', 38400),
    ]



    
  PARIDAD_CHOICES =[
    ('PAR','Par'),
    ('IMPAR', 'Impar'),]


    
  Puerto = models.CharField(max_length=3, default='sa')
  Velocidad = models.IntegerField(choices = Vel_CHOICES, default=19200)
  Paridad = models.CharField(max_length=5, choices = PARIDAD_CHOICES, default= 'PAR')
  Reintentos = models.IntegerField(default=3)
  IdEsclavo = models.IntegerField(default=1)

  def __str__(self):
    
       return '%d' % (self.id,)


    
#MODELOS DE TAG

class Tag(models.Model):
  

  TIPOVARIABLE_CHOICES= [
  ('O', 'Origen'),
  ('B', 'Basica'),
  ('C', 'Calculada'),]
    
  Nombre = models.CharField(max_length=42)
  Descriptor = models.CharField(max_length=120)
  id_Tk= models.ForeignKey(Tk, on_delete=models.CASCADE)
  Habilitar= models.BooleanField(default = True)
  TipoVariable = models.CharField(choices = TIPOVARIABLE_CHOICES,max_length=1, default = 'B')
  direccion = models.CharField(max_length=5, default= '4:0')
  
  def __str__(self):
    
       return '%d' % (self.id,) 
  
#Extiende del modelo Tag con Características comunes para Analógicos y Digitales    
class Meta:
  
  abstract = True  


class Digital(Tag):
  EstadoInicial= models.BooleanField(default = True)
  SOA_Habilitar= models.BooleanField(default = True)
  S1A_Habilitar = models.BooleanField(default = True)
  S0A = models.BooleanField(default = True)
  S1A= models.BooleanField(default = True)



  def __str__(self):
    
      return '%s' % (self.Nombre)

 #Extiende del modelo Tag con Características comunes para Analógicos y Digitales 
  abstract = True  


class Analogico(Tag):
  ValorMinimo = models.FloatField(default= 1.0)
  ValorMaximo = models.FloatField(default= 2.0)
  Unidad = models.CharField(max_length= 5)

  HH_Habilitar= models.BooleanField(default = True)
  H_Habilitar= models.BooleanField(default = True)
  LL_Habilitar= models.BooleanField(default = True)
  L_Habilitar= models.BooleanField(default = True)
  HisteresisHabilitar = models.BooleanField(default = True)
  ROC_Habiltar = models.BooleanField(default = True)
  
  ValorInicial = models.FloatField(default=1.0)
 
  HH = models.FloatField(default=1.0)
  H = models.FloatField(default=1.0)
  LL= models.FloatField(default=1.0)
  L = models.FloatField(default=1.0)
  Histeresis= models.FloatField(default=1.0)
  ROC= models.FloatField(default=1.0)


  def __str__(self):
    
     return '%s' % (self.Nombre)



#HISTORICOS Hs=todos, Hs0= tablas de segundos, Hs1= tablas de minutos, Hs2= tablas de horas, Hs3= tablas de dias,
#Hs4= tablas de meses, Hs5= tablas de años.

class Analogico_Hs(models.Model):
 
  data = JSONField(null=True, blank=True,)

  


  def __str__(self):
    
     return '%s' % (self.id)


#data_ = {"idtag": 11, "Timestamp": "2020-05-26 10:13:49.334038", "Pv": 3000}

#sample=Analogico_Hs(data=data_)

#sample.save()


class Analogico_Hs0(models.Model):
 
  data = JSONField()


  def __str__(self):
    
     return '%s' % (self.id)

class Analogico_Hs1(models.Model):
 
  data = JSONField()

  def __str__(self):
    
     return '%s' % (self.id)

class Analogico_Hs2(models.Model):
 
  data = JSONField()

  def __str__(self):
    
     return '%s' % (self.id)

class Analogico_Hs3(models.Model):
 
  data = JSONField()

  def __str__(self):
    
     return '%s' % (self.id)

class Analogico_Hs4(models.Model):
 
  data = JSONField()

  def __str__(self):
    
     return '%s' % (self.id)

class Analogico_Hs5(models.Model):
 
  data = JSONField()

  def __str__(self):
    
     return '%s' % (self.id)



def Gestion_Hs(delta_t, bd_origen, bd_destino):

  
  if (hs0_bd_origen.count() != 0):

    q = bd_origen.iterator()

    for recorrido in q:
    
       #print(recorrido)
       #print(datetime.now())
       #print(recorrido.data['Timestamp'])
       #print(delta_t)
      delt=(datetime.now()- datetime.strptime(recorrido.data['Timestamp'], '%Y-%m-%d %H:%M:%S.%f'))
       #print(type(delta))
       


       #print(delt)
       #print(type(delt))
       
       #print(delta_t)
       #print(type(delta_t))

      print("curren_delta" + str(delt))
      print ("satelite_delta" + str(delta_t))
      if (delt < delta_t):
        #print("curren_delta" + str(delt))
        #print ("satelite_delta" + str(delta_t))
        #Analogico_Hs0.objects.create(data = recorrido.data)
        bd_destino.create(data = recorrido.data)
        print('Grabando en hs0')

       


timestamp = str(datetime.now())
hs0_delta_t    = timedelta(seconds=59)
hs0_bd_origen  = Analogico_Hs.objects.all()
hs0_bd_destino = Analogico_Hs0.objects


Gestion_Hs(hs0_delta_t, hs0_bd_origen, hs0_bd_destino)

 




    
