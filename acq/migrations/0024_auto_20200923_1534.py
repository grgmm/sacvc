# Generated by Django 3.0.3 on 2020-09-23 19:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acq', '0023_auto_20200916_1504'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='tk',
            name='tct_data',
        ),
        migrations.AddField(
            model_name='tk',
            name='tctvalido',
            field=models.BooleanField(default=False),
        ),
    ]
