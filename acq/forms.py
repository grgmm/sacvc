
from django.forms import ModelForm
from django import forms
from .models import Tk


class TctForm(forms.ModelForm):
    class Meta:
        model = Tk
        fields = ['Nombre', 'Descriptor']