# Generated by Django 3.0.3 on 2020-11-25 16:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acq', '0006_tag_direccion_campo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tk',
            name='fecha_subida_tct',
            field=models.DateTimeField(blank=True, editable=False, null=True, verbose_name='Subido El:'),
        ),
    ]
