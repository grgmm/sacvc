from django.urls import path
from . import views
from django.conf.urls import url


app_name = 'acq'
urlpatterns = [
	path('', views.index, name='index'),
	url('lista/',views.lista, name='lista'),

]