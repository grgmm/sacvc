# Generated by Django 3.0.3 on 2020-02-20 00:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acq', '0004_auto_20200210_2120'),
    ]

    operations = [
        migrations.AddField(
            model_name='tag',
            name='direccion',
            field=models.CharField(default='4:0', max_length=5),
        ),
    ]
