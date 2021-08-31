from django import forms
from django.forms import ModelForm

#####FORMULARIO PARA CAMBIO E CLAVES
class users_cambio_clave_form(forms.Form):
    nueva_clave = forms.CharField(widget=forms.PasswordInput)
    repita_nueva_clave = forms.CharField(widget=forms.PasswordInput)

######CONFIGURACION DEL MAESTRO MODBUS PARA COMUNICACION CON DISPOSITIVOS DE CAMPO

#### VARIABLES DE SELECCION PARA LA COMNICACION SERIAL
VEL_CHOICES = [
   (1, 9600),
   (2, 19200),
   (3, 38400),
    ]

PARIDAD_CHOICES = [
    ('PAR','Par'),
    ('IMPAR', 'Impar'),]

TIPOCOMM_CHOICES = [
    ('TCP', 'MBTCP'),
    ('RTU', 'MBRTU'),
   ]
PORT_CHOICES = [
      ('TCP_SRV', 'TCP_SRV'),
      ('serial1', 'COM1'),
      ('serial2', 'COM2'),
      ('serial3', 's0'),
      ('serial4', 's1'),

  ]
class mbmaestro(forms.Form):
    Tipo = forms.ChoiceField(choices=TIPOCOMM_CHOICES)
    Puerto = forms.ChoiceField(choices=PORT_CHOICES, help_text='COMXX PARA WINDOWS SERIAL Y SXX PARA LINUX SERIAL')


    IpDevice = forms.CharField(max_length=100, label="Ip del Dispositivo") #DISPONIBLE SOLO SI EL TIPO ES TCP
    SercvicePort = forms.IntegerField( label="Puerto de Servicio")  #DISPONIBLE SOLO SI EL TIPO ES TCP

    Velocidad = forms.ChoiceField(choices=VEL_CHOICES)  # DISPONIBLE SI EL TIPO ES RTU

    Paridad = forms.ChoiceField(choices=PARIDAD_CHOICES, ) # DISPONIBLE SI EL TIPO ES RTU

    Reintentos = forms.IntegerField()
    IdDevice = forms.IntegerField(label="Id del Dispositivo")


class guardar_configuracion_mbm(forms.Form):
    Configuracion = forms.FileField(required=False)



