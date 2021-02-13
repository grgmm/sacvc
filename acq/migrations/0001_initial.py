# Generated by Django 3.0.3 on 2020-10-27 15:15

import django.contrib.postgres.fields.jsonb
import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Analogico_Hs',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data', django.contrib.postgres.fields.jsonb.JSONField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Analogico_Hs0',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data', django.contrib.postgres.fields.jsonb.JSONField()),
            ],
        ),
        migrations.CreateModel(
            name='Analogico_Hs1',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data', django.contrib.postgres.fields.jsonb.JSONField()),
            ],
        ),
        migrations.CreateModel(
            name='Analogico_Hs2',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data', django.contrib.postgres.fields.jsonb.JSONField()),
            ],
        ),
        migrations.CreateModel(
            name='Analogico_Hs3',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data', django.contrib.postgres.fields.jsonb.JSONField()),
            ],
        ),
        migrations.CreateModel(
            name='Analogico_Hs4',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data', django.contrib.postgres.fields.jsonb.JSONField()),
            ],
        ),
        migrations.CreateModel(
            name='Analogico_Hs5',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data', django.contrib.postgres.fields.jsonb.JSONField()),
            ],
        ),
        migrations.CreateModel(
            name='MbEsclavo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Puerto', models.CharField(default='sa', max_length=3)),
                ('Velocidad', models.IntegerField(choices=[('A', 9600), ('B', 19200), ('C', 38400)], default=19200)),
                ('Paridad', models.CharField(choices=[('PAR', 'Par'), ('IMPAR', 'Impar')], default='PAR', max_length=5)),
                ('Reintentos', models.IntegerField(default=3)),
                ('IdEsclavo', models.IntegerField(default=1)),
            ],
        ),
        migrations.CreateModel(
            name='MbMaestro',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Puerto', models.CharField(default='s0', max_length=3)),
                ('Velocidad', models.IntegerField(choices=[('A', 9600), ('B', 19200), ('C', 38400)], default='A')),
                ('Paridad', models.CharField(choices=[('PAR', 'Par'), ('IMPAR', 'Impar')], default='PAR', max_length=5)),
                ('Reintentos', models.IntegerField(default=3)),
                ('Tipo', models.CharField(choices=[('TCP', 'MBTCP'), ('RTU', 'MBRTU')], default='TCP', max_length=3)),
                ('IdDevice', models.IntegerField(default=1)),
            ],
        ),
        migrations.CreateModel(
            name='PatioTanque',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Nombre', models.CharField(max_length=30, unique=True)),
                ('Descriptor', models.CharField(default='', max_length=120)),
            ],
            options={
                'ordering': ['pk'],
            },
        ),
        migrations.CreateModel(
            name='Tag',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Nombre', models.CharField(max_length=42)),
                ('Descriptor', models.CharField(default='', max_length=120)),
                ('Habilitar', models.BooleanField(default=True)),
                ('TipoVariable', models.CharField(choices=[('O', 'Origen'), ('B', 'Basica'), ('C', 'Calculada')], default='B', max_length=1)),
                ('direccion', models.CharField(default='4:0', max_length=5)),
            ],
        ),
        migrations.CreateModel(
            name='Analogico',
            fields=[
                ('tag_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='acq.Tag')),
                ('ValorMinimo', models.FloatField(default=1.0)),
                ('ValorMaximo', models.FloatField(default=2.0)),
                ('Unidad', models.CharField(max_length=5)),
                ('HH_Habilitar', models.BooleanField(default=True)),
                ('H_Habilitar', models.BooleanField(default=True)),
                ('LL_Habilitar', models.BooleanField(default=True)),
                ('L_Habilitar', models.BooleanField(default=True)),
                ('HisteresisHabilitar', models.BooleanField(default=True)),
                ('ROC_Habiltar', models.BooleanField(default=True)),
                ('ValorInicial', models.FloatField(default=1.0)),
                ('HH', models.FloatField(default=1.0)),
                ('H', models.FloatField(default=1.0)),
                ('LL', models.FloatField(default=1.0)),
                ('L', models.FloatField(default=1.0)),
                ('Histeresis', models.FloatField(default=1.0)),
                ('ROC', models.FloatField(default=1.0)),
            ],
            bases=('acq.tag',),
        ),
        migrations.CreateModel(
            name='Digital',
            fields=[
                ('tag_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='acq.Tag')),
                ('EstadoInicial', models.BooleanField(default=True)),
                ('SOA_Habilitar', models.BooleanField(default=True)),
                ('S1A_Habilitar', models.BooleanField(default=True)),
                ('S0A', models.BooleanField(default=True)),
                ('S1A', models.BooleanField(default=True)),
            ],
            bases=('acq.tag',),
        ),
        migrations.CreateModel(
            name='Tk',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Nombre', models.CharField(max_length=30, null=True)),
                ('Descriptor', models.CharField(blank=True, default='', max_length=120)),
                ('tct_archivo', models.FileField(blank=True, upload_to='tct', validators=[django.core.validators.FileExtensionValidator(allowed_extensions=['csv'])])),
                ('Descriptor_tct', models.CharField(blank=True, default='', max_length=120, null=True)),
                ('fecha_subida_tct', models.DateTimeField(blank=True, null=True, verbose_name='Subido El:')),
                ('tctvalido', models.BooleanField(default=False, editable=False)),
                ('current_data', django.contrib.postgres.fields.jsonb.JSONField()),
                ('tipo_de_tk', models.CharField(choices=[('CV', 'Cilindrico Vertical'), ('CH', 'Cilindrico Horizontal'), ('ES', 'Esferico'), ('TF', 'Techo  Flotante')], default='TF', max_length=2)),
                ('id_patioTanque', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='acq.PatioTanque', verbose_name='Patio de Tanques')),
            ],
        ),
        migrations.CreateModel(
            name='Tct',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Lt0', models.FloatField(default=0.0, null=True)),
                ('Lt1', models.FloatField(default=0.0, null=True)),
                ('Tov0', models.FloatField(default=0.0, null=True)),
                ('Tov1', models.FloatField(default=0.0, null=True)),
                ('Tov', models.FloatField(default=0.0, null=True)),
                ('id_tk', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='acq.Tk')),
            ],
        ),
        migrations.AddField(
            model_name='tag',
            name='id_Tk',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='acq.Tk'),
        ),
        migrations.CreateModel(
            name='Factor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ctsh', models.FloatField(default=1.0)),
                ('fra', models.FloatField(default=1.0)),
                ('ctpl', models.FloatField(default=1.0)),
                ('id_tk', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='acq.Tk')),
            ],
        ),
    ]