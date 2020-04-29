from django.urls import path
from . import views
from django.conf.urls import url
from django.views.generic.base import TemplateView
from django.urls import path
from django.conf.urls import url
from .views import (
    patiotanquelist,
    add_patiotanque,
    PatiotanqueDelete
   
    )
#from acq.views import ListaPlantas


app_name = 'acq'
urlpatterns = [
	
    url('actualizar/',views.actualizar, name='actualizar'), #CONVIERTE EL JSON DEL PV EN UNA URL
	path('', TemplateView.as_view(template_name="acq/main.html"), name='acq_main'),
	path('PV/',TemplateView.as_view(template_name="acq/refrescar.html"), name='PV'), #MUESTRA LOS VALORES EN LINEA DE FORMA TABULAR

    url(r'^listatankfarm/$', patiotanquelist.as_view(), name='list_tf'), #LISTADO DE PATIOS DE TANQUES


    url(r'^add_tf/$', views.add_patiotanque, name='add_tf'), #AGREGAR PATIO DE TANQUES
   
    #url(r'^delete_tf/$', views.add_patiotanque, name='delete_tf'), #AGREGAR PATIO DE TANQUES
    url(r'^del_tf/(?P<pk>\d+)$', PatiotanqueDelete.as_view(), name='del_tf'),
    

	

    

	

   #url(r'^add_tf/$', views.add_patiotanque, name='add_tf'), #AGREGAR PATIO DE TANQUES

	#url(r'^$', CourseList.as_view(), name='list'),
   # url(r'^(?P<pk>\d+)$', PatiotanqueDetail.as_view(), name='detailtankfarm'),


    #url(r'^editar/(?P<pk>\d+)$', PatiotanqueUpdate.as_view(), name='edittankfarm'),
    
    #url(r'^borrar/(?P<pk>\d+)$', PatiotanqueDelete.as_view(), name='deletetankfarm'),
	

]

