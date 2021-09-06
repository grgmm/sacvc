# Generated by Django 3.2.6 on 2021-08-30 16:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acq', '0002_auto_20210830_1257'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tk',
            name='ctpl',
            field=models.FloatField(default=1.0, verbose_name='Ctpl'),
        ),
        migrations.AlterField(
            model_name='tk',
            name='ctsh',
            field=models.FloatField(default=1.0, verbose_name='Ctsh'),
        ),
        migrations.AlterField(
            model_name='tk',
            name='fra',
            field=models.FloatField(default=1.0, verbose_name='Fra'),
        ),
    ]