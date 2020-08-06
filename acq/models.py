from __future__ import unicode_literals
from django.db import models
from django.contrib.auth.models import PermissionsMixin
from django.contrib.auth.base_user import AbstractBaseUser
from django.utils.translation import ugettext_lazy as _ 
import time
from django.contrib.postgres.fields import JSONField
import json
from datetime import datetime
from datetime import timedelta
from django.core.validators import FileExtensionValidator


# Create your models here.

#MODELOS DE PATIO DE TANQUES

class PatioTanque(models.Model):
    
    Nombre = models.CharField(max_length=30,unique=True)
    Descriptor = models.CharField(max_length=120,default="",)

    class Meta:
        ordering = ['pk']

    
    def __str__(self):
    
       return '%s' % (self.Nombre,)
       



#MODELOS DE TANQUES

class Tk(models.Model):
   
    id_patioTanque = models.ForeignKey(PatioTanque, on_delete=models.CASCADE,verbose_name= _('Patio de Tanques'))      
    Nombre = models.CharField(max_length=30,)
    Descriptor = models.CharField(max_length=120,default="",)    
    

    tct_archivo = models.FileField(upload_to='tct', max_length=100, blank=True, validators=[FileExtensionValidator(allowed_extensions=['csv'])])
    Descriptor_tct = models.CharField(max_length=120,default="",null=True)
    fecha_subida_tct = models.DateTimeField(auto_now_add=True, blank=True, verbose_name= _('Subido El:'))



    TIPOTanque_CHOICES = [
    ('CV', 'Cilindrico Vertical'),
    ('CH', 'Cilindrico Horizontal'),
    ('ES', 'Esferico'),
    ('TF', 'Techo  Flotante'),
    ]
    tipo_de_tk = models.CharField(
      max_length = 2, choices=TIPOTanque_CHOICES, default= 'TF',)


    
    def __str__(self):
    
       return '%s, %s' % (self.Nombre, self. Descriptor, )


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
    Lt0 = models.DecimalField(max_digits= 3, decimal_places = 3) #magnitud Unidades de nivel
    Lt1 = models.DecimalField(max_digits= 3, decimal_places = 3) #magnitud de Fracciones de nivel
    
    Tov_1 = models.FloatField(default = 1.0)
    Tov_2 = models.FloatField(default = 1.0)
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


    
#MODELOS DE TAGS

class Tag(models.Model): #Características comunes para Analógicos y Digitales
  

  TIPOVARIABLE_CHOICES= [
  ('O', 'Origen'),
  ('B', 'Basica'),
  ('C', 'Calculada'),]
    
  Nombre = models.CharField(max_length=42)
  Descriptor = models.CharField(max_length=120, default='')
  id_Tk= models.ForeignKey(Tk, on_delete=models.CASCADE)
  Habilitar= models.BooleanField(default = True)
  TipoVariable = models.CharField(choices = TIPOVARIABLE_CHOICES,max_length=1, default = 'B')
  direccion = models.CharField(max_length=5, default= '4:0')
  
  def __str__(self):
    
       return '%d' % (self.id,)   


class Meta: #Extiende del modelo Tag con Características no comunes para Analógicos y Digitales
  
  abstract = True  


class Digital(Tag):
  EstadoInicial= models.BooleanField(default = True)
  SOA_Habilitar= models.BooleanField(default = True)
  S1A_Habilitar = models.BooleanField(default = True)
  S0A = models.BooleanField(default = True)
  S1A= models.BooleanField(default = True)


  def __str__(self):
    
      return '%s' % (self.Nombre)

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

class Analogico_Hs(models.Model): #Poblado automatico al lvantar modulo hs.py
 
  data = JSONField(null=True, blank=True,)

  


  def __str__(self):
    
     return '%s' % (self.id)


#data_ = {"idtag": 11, "Timestamp": "2020-05-26 10:13:49.334038", "Pv": 3000}

#sample=Analogico_Hs(data=data_)

#sample.save()


class Analogico_Hs0(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py
 
  data = JSONField()


  def __str__(self):
    
     return '%s' % (self.id)

class Analogico_Hs1(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py
 
  data = JSONField()

  def __str__(self):
    
     return '%s' % (self.id)

class Analogico_Hs2(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py
 
  data = JSONField()

  def __str__(self):
    
     return '%s' % (self.id)

class Analogico_Hs3(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py
 
  data = JSONField()

  def __str__(self):
    
     return '%s' % (self.id)

class Analogico_Hs4(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py
 
  data = JSONField()

  def __str__(self):
    
     return '%s' % (self.id)

class Analogico_Hs5(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py
 
  data = JSONField()

  def __str__(self):
    
     return '%s' % (self.id)