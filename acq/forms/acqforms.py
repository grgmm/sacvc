from django import forms


class users_cambio_clave_form(forms.Form):
    clave = forms.CharField(widget=forms.PasswordInput)
    reclave = forms.CharField(widget=forms.PasswordInput)
