from django import forms
from django.forms import ModelForm


class users_cambio_clave_form(forms.Form):
    nueva_clave = forms.CharField(widget=forms.PasswordInput)
    repita_nueva_clave = forms.CharField(widget=forms.PasswordInput)

class guardar_configuracion_mbm(forms.Form):
    Configuracion = forms.FileField(required=False)
class mbmaestro(forms.Form):
    Tipo = forms.CharField(max_length=3, )
    Puerto = forms.CharField( max_length=10, )
    IpDevice = forms.CharField(max_length=100, label="Ip del Dispositivo")
    SercvicePort = forms.IntegerField( label="Puerto de Servicio")
    Velocidad = forms.IntegerField()  # NO APLICA PARA TCP
    Paridad = forms.CharField(max_length=5 )  # NO APLICA PARA TCP
    Reintentos = forms.IntegerField()
    IdDevice = forms.IntegerField(label="Id del Dispositivo")



