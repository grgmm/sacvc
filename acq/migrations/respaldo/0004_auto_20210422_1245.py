# Generated by Django 3.1.6 on 2021-04-22 10:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acq', '0003_profile'),
    ]

    operations = [
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('patio', models.ManyToManyField(to='acq.PatioTanque')),
            ],
        ),
        migrations.DeleteModel(
            name='Profile',
        ),
    ]
