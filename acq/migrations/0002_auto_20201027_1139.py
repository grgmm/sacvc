# Generated by Django 3.0.3 on 2020-10-27 15:39

import django.contrib.postgres.fields.jsonb
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('acq', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tk',
            name='current_data',
            field=django.contrib.postgres.fields.jsonb.JSONField(null=True),
        ),
    ]
