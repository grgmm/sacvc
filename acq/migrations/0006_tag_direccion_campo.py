# Generated by Django 3.0.3 on 2020-11-25 16:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acq', '0005_auto_20201122_1018'),
    ]

    operations = [
        migrations.AddField(
            model_name='tag',
            name='direccion_campo',
            field=models.CharField(default='4:0', max_length=5),
        ),
    ]