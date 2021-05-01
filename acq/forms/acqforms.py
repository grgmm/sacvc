from django import forms


class users_cambio_clave_form(forms.Form):
    clave = forms.CharField()
    reclave = forms.CharField()

    def validar_clave(clave, reclave, clave_valida):
            if clave==reclave:
                clave_valida = reclave
                print('CLAVE VALIDA')
                return(clave)

            else:
                print('LAS CLAVES NO COINCIDEN')
                clave_valida=''
            return(clave_valida)


        # send email using the self.cleaned_data dictionary
