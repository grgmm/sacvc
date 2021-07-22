# Generated by Django 3.1.6 on 2021-06-02 13:46

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acq', '0005_alter_tag_etiqueta1'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tk',
            name='Descriptor_tct',
            field=models.CharField(blank=True, default='', max_length=120, null=True, verbose_name='Descriptor:'),
        ),
        migrations.AlterField(
            model_name='tk',
            name='tct_archivo',
            field=models.FileField(blank=True, upload_to='tct', validators=[django.core.validators.FileExtensionValidator(allowed_extensions=['csv'])], verbose_name='Archivo:'),
        ),
    ]
