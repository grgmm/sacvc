from django.urls import path
from . import views
from django.conf.urls import url
from django.views.generic.base import TemplateView


app_name = 'acq'
urlpatterns = [
	
	url('lista/',views.lista, name='lista'),
	
	path('', TemplateView.as_view(template_name="acq/main.html"), name='acq_main'),
	path('refrescar/',TemplateView.as_view(template_name="acq/refrescar.html"), name='refrescar'),
	url('actualizar/',views.actualizar, name='actualizar'),
	url(r'^patiotanques/$', views.patiotanque_list, name='patiotanque_list'),

]

