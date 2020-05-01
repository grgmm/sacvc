from __future__ import unicode_literals
from django.db import models
from django.contrib.auth.models import PermissionsMixin
from django.contrib.auth.base_user import AbstractBaseUser
from django.utils.translation import ugettext_lazy as _ 
import time
from datetime import datetime
import random 
from django.contrib.postgres.fields import JSONField
from datetime import datetime
import random 
import time
import json
import socket
import sys
from umodbus import conf
from umodbus.client import tcp

from django.forms import ModelForm

# Create your models here.

#MODELOS DE TANQUES

class PatioTanque(models.Model):
    
    Nombre = models.CharField(max_length=30,unique=False)
    Descriptor = models.CharField(max_length=120,default= '',)

    class Meta:
        ordering = ["pk"]

    
    def __str__(self):
    
       return '%s' % (self.Nombre, self.Descriptor)



class PatioTanqueForm(ModelForm): #formulario agregar instalacion

    class Meta:
        model = PatioTanque
        fields = ('Nombre','Descriptor')





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


class Factor(models.Model):
    
    id_tk = models.ForeignKey(Tk, on_delete=models.CASCADE)
    ctsh = models.FloatField(default = 1.0)
    fra = models.FloatField(default = 1.0)
    ctpl = models.FloatField(default = 1.0)

    def __str__(self):
    
       return '%d' % (self.id,)





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



#HISTORICOS



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