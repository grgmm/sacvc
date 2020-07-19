from django import forms
from uploads.core.models import Tk


class TctForm(forms.ModelForm):
    class Meta:
        model = Tk
        fields = ('descriptor_tct', 'tct_archivo', )
