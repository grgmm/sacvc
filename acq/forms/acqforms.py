from django import forms
from acq.models import MbMaestro

class users_cambio_clave_form(forms.Form):
    nueva_clave = forms.CharField(widget=forms.PasswordInput)
    repita_nueva_clave = forms.CharField(widget=forms.PasswordInput)

class MbMaestroForm(forms.Form):
    Tipo = forms.CharField(max_length=3, )
    Puerto = forms.CharField( max_length=10, )
    IpDevice = forms.CharField(max_length=100, )
    SercvicePort = forms.IntegerField( )
    Velocidad = forms.IntegerField()  # NO APLICA PARA TCP
    Paridad = forms.CharField(max_length=5, )  # NO APLICA PARA TCP
    Reintentos = forms.IntegerField()
    IdDevice = forms.IntegerField()

