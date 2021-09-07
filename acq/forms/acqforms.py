from django import forms
# FORMULARIO PARA CAMBIO E CLAVES
class users_cambio_clave_form(forms.Form):
    nueva_clave = forms.CharField(widget=forms.PasswordInput)
    repita_nueva_clave = forms.CharField(widget=forms.PasswordInput)


# CONFIGURACION DEL MAESTRO MODBUS PARA COMUNICACION CON DISPOSITIVOS DE CAMPO
# VARIABLES DE SELECCION PARA LA COMNICACION SERIAL
VEL_CHOICES = [
   (1, 9600),
   (2, 19200),
   (3, 38400),
    ]

PARIDAD_CHOICES = [
    ('PAR', 'Par'),
    ('IMPAR', 'Impar'), ]

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

    # Se retiro el label="Ip del Dispositivo" de IpDevice para pruebas
    # Se retiro el label="Puerto de Servicio" de SercvicePort para pruebas
    # Se retiro el label="Id del Dispositivo" de IdDevice para pruebas

    IpDevice = forms.CharField(max_length=100,)  # DISPONIBLE SOLO SI EL TIPO ES TCP
    SercvicePort = forms.IntegerField()  # DISPONIBLE SOLO SI EL TIPO ES TCP

    Velocidad = forms.ChoiceField(choices=VEL_CHOICES)  # DISPONIBLE SI EL TIPO ES RTU

    Paridad = forms.ChoiceField(choices=PARIDAD_CHOICES, )  # DISPONIBLE SI EL TIPO ES RTU

    Reintentos = forms.IntegerField()
    IdDevice = forms.IntegerField()


class guardar_configuracion_mbm(forms.Form):
    Configuracion = forms.FileField(required=False)

# VARIABLES DE SELECCION PARA LA GESTION DE LOS MODULOS

class ModulosForm(forms.Form):
    OPTIONS = [
            ("ACQ", "Adquisicion"),
            ("CPT", "Computo"),
            ("HS", "Historicos"),
            ("GES_HS", "Gestion Historicos"),
            ("ALL", "Seleccionar Todos"),
            ("NONE", "Deseleccionar Todos"),
    ]
    Countries = forms.MultipleChoiceField(widget=forms.CheckboxSelectMultiple,
                                          choices=OPTIONS, )