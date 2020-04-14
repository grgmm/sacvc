from django.urls import path
from . import views
from django.conf.urls import url
from django.views.generic.base import TemplateView


app_name = 'acq'
urlpatterns = [
	#path('', views.index, name='index'),
	url('lista/',views.lista, name='lista'),
	#url('jquery_ajax/',views.jquery_ajax, name='jquery_ajax'),
	path('', TemplateView.as_view(template_name="acq/main.html"), name='acq_main'),
	path('refrescar/',TemplateView.as_view(template_name="acq/refrescar.html"), name='refrescar'),
	url('actualizar/',views.actualizar, name='actualizar'),
	#url('refrescar/',views.refrescar, name='refrescar'),

]

