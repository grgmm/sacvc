from django.urls import path
from . import views

app_name = 'acq'
urlpatterns = [
	path('', views.index, name='index'),
	
]