# Generated by Django 3.0.3 on 2020-06-04 18:44

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('acq', '0013_analogico_hs_dataq'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='analogico_hs',
            name='dataq',
        ),
    ]
