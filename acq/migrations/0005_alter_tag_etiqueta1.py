# Generated by Django 3.2 on 2021-05-31 12:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acq', '0004_merge_0003_alter_tk_id_aor_0003_userprofile_aor'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tag',
            name='etiqueta1',
            field=models.CharField(choices=[('lt', 'Nivel Medido'), ('pt', 'Presión'), ('tt', 'Temperatura'), ('TOV', 'Volumen Total Observado '), ('NA', 'No Asignado'), ('GSV', 'Volumen Bruto Estandar'), ('NSV', 'Volumen Neto Estandar'), ('lta', 'Nivel de Agua Libre'), ('ays', 'Porcentaje de Agua y Sedimento')], default='NA', max_length=4),
        ),
    ]
