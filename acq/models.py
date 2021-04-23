from __future__ import unicode_literals
from django.db import models
from django.contrib.auth.models import PermissionsMixin
from django.contrib.auth.base_user import AbstractBaseUser
from django.utils.translation import ugettext_lazy as _
import time
#from django.contrib.postgres.fields import JSONField
#import json
from datetime import datetime
from datetime import timedelta
from django.core.validators import FileExtensionValidator, DecimalValidator, MaxValueValidator, MinValueValidator
from django.contrib.auth.models import User

from django.db.models.signals import post_save
from django.dispatch import receiver

# Create your models here.

#MODELOS DE PATIO DE TANQUES

class PatioTanque(models.Model):

    Nombre = models.CharField(max_length=30,unique=True)
    Descriptor = models.CharField(max_length=120,default="",)

    class Meta:
        ordering = ['Nombre']


    def __str__(self):

       return '%s' % (self.Nombre,)




class UserProfile(models.Model):
    user = models.OneToOneField(
        User,
        on_delete=models.CASCADE,
        primary_key=True,
    )
    patios = models.ManyToManyField(PatioTanque)


    def __str__(self):
        return "%s Usuariololin" % self.user.username




@receiver(post_save, sender=User)
def create_profile_handler(sender, instance, created, **kwargs):
    if not created:
        return
    UserProfile.objects.create(user=instance)



@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.user.save()








#MODELOS DE TANQUES

class Tk(models.Model):

    id_patioTanque = models.ForeignKey(PatioTanque, on_delete=models.CASCADE,verbose_name= _('Patio de Tanques'))
    Nombre = models.CharField(max_length=30,null=True,unique=True)
    Descriptor = models.CharField(max_length=120, default="", blank=True,)

    tct_archivo = models.FileField (upload_to='tct', max_length=100, blank=True, validators=[FileExtensionValidator(allowed_extensions=['csv'])])

    Descriptor_tct = models.CharField(max_length=120,default="",null=True, blank=True,)
    fecha_subida_tct = models.DateTimeField(null=True, blank = True, verbose_name= _('Subido El:'), )
    tctvalido= models.BooleanField(default=False, editable = False)
    current_data = models.JSONField(null=True)

    TIPOTanque_CHOICES = [
    ('CV', 'Cilindrico Vertical'),
    ('CH', 'Cilindrico Horizontal'),
    ('ES', 'Esferico'),
    ('TF', 'Techo  Flotante'),
    ]
    tipo_de_tk = models.CharField(
      max_length = 2, choices=TIPOTanque_CHOICES, default= 'TF',)

    class Meta:
        ordering = ['Nombre']

    def __str__(self):

       return '%s, %s' % (self.Nombre, self. Descriptor, )


class Tct(models.Model):

    id_tk = models.ForeignKey(Tk, on_delete=models.CASCADE)

    Lt0 = models.FloatField(default = 0.0, null =True) #magnitud Unidades de Nivel
    Lt1 = models.FloatField(default = 0.0, null =True) #magnitud de Fracciones de Nivel

    Tov0 = models.FloatField(default = 0.0, null =True) #magnitud Unidades de Volumen
    Tov1 = models.FloatField(default = 0.0, null =True) #magnitud Unidades de Volumen
    Tov = models.FloatField(default = 0.0, null =True)  #magnitud Unidades de Volumen


    def __str__(self):

       return '%d' % (self.id)


#MODELOS DE FACTORES DE TANQUES

class Factor(models.Model):

    id_tk = models.ForeignKey(Tk, on_delete=models.CASCADE)
    ctsh = models.FloatField(default = 1.0)
    fra = models.FloatField(default = 1.0)
    ctpl = models.FloatField(default = 1.0)

    def __str__(self):

       return '%d' % (self.id,)

#MODELOS TABLA CERTIFICADA (DE AFORO) DE TANQUES



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

  PARAMETRO_TK_CHOICES= [
   ('lt', 'Nivel Medido'),
   ('pt', 'Presión'),
   ('tt', 'Temperatura'),
   ('TOV', 'Volumen Total Observado '),
   ('NA', 'No Asignado'),
   ('GSV', 'Volumen Bruto Estandar'),
   ('NSV', 'Volumen Neto Estandar'),
   ('lta', 'Nivel de Agua Libre'),]

  Nombre = models.CharField(max_length=42)
  Descriptor = models.CharField(max_length=120, default='')
  id_Tk= models.ForeignKey(Tk, on_delete=models.CASCADE)
  Habilitar= models.BooleanField(default = True)
  TipoVariable = models.CharField(verbose_name= _('Tipo de Variable'),choices =  TIPOVARIABLE_CHOICES, max_length=1, default = 'B')
  direccion = models.CharField(max_length=5, default= '4:0')
  direccion_campo = models.CharField(max_length=5, default= '4:0')


  etiqueta1 = models.CharField(choices = PARAMETRO_TK_CHOICES,max_length=4, default = 'NA')

  etiqueta2 = models.CharField(max_length=32, blank=True, null =True, default = '',verbose_name= _('Tag del instrumento en campo o P&ID'), )

  etiqueta3 = models.CharField(max_length=32,blank=True, null =True, default = '', verbose_name= _('ETIQUETA PARA USUARIOS'),)
  etiqueta4 = models.CharField(max_length=32,blank=True, null =True, default = '', verbose_name= _('ETIQUETA PARA USUARIOS'),)
  etiqueta5=  models.CharField(max_length=32,blank=True, null =True, default = '', verbose_name= _('ETIQUETA PARA USUARIOS'),)
  etiqueta6=  models.CharField(max_length=32,blank=True, null =True, default = '', verbose_name= _('ETIQUETA PARA USUARIOS'),)


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

class Analogico_Hs(models.Model): #Poblado automatico al levantar modulo hs.py

  data = models.JSONField(null=True, blank=True,)




  def __str__(self):

     return '%s' % (self.id)


#data_ = {"idtag": 11, "Timestamp": "2020-05-26 10:13:49.334038", "Pv": 3000}

#sample=Analogico_Hs(data=data_)

#sample.save()


class Analogico_Hs0(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py

  data = models.JSONField()


  def __str__(self):

     return '%s' % (self.id)

class Analogico_Hs1(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py

  data = models.JSONField()

  def __str__(self):

     return '%s' % (self.id)

class Analogico_Hs2(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py

  data = models.JSONField()

  def __str__(self):

     return '%s' % (self.id)

class Analogico_Hs3(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py

  data = models.JSONField()

  def __str__(self):

     return '%s' % (self.id)

class Analogico_Hs4(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py

  data = models.JSONField()

  def __str__(self):

     return '%s' % (self.id)

class Analogico_Hs5(models.Model): #POBLADO AUTOMATICO AL LEVANTAR MODULO ges_hs.py

  data = models.JSONField()

  def __str__(self):

     return '%s' % (self.id)
