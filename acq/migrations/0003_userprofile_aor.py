# Generated by Django 3.1.6 on 2021-05-14 10:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acq', '0002_auto_20210512_1344'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='aor',
            field=models.ManyToManyField(to='acq.AOR'),
        ),
    ]
