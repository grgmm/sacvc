from django.urls import path
from . import views
from django.conf.urls import url
from django.views.generic.base import TemplateView
from django.urls import path
from django.conf.urls import url
from .views import (
    PatiotanqueList,
    PatiotanqueDetail,
    PatiotanqueCreation,
    PatiotanqueUpdate,
    PatiotanqueDelete
    )
#from acq.views import ListaPlantas


app_name = 'acq'
urlpatterns = [
	
	url('lista/',views.lista, name='lista'),
	
	path('', TemplateView.as_view(template_name="acq/main.html"), name='acq_main'),
	path('refrescar/',TemplateView.as_view(template_name="acq/refrescar.html"), name='refrescar'),
	url('actualizar/',views.actualizar, name='actualizar'),

	url(r'^listatankfarm/$', PatiotanqueList.as_view(), name='listtankfarm'),
	#url(r'^$', CourseList.as_view(), name='list'),
    url(r'^(?P<pk>\d+)$', PatiotanqueDetail.as_view(), name='detailtankfarm'),
    url(r'^nuevo$', PatiotanqueCreation.as_view(), name='newtankfarm'),
    url(r'^editar/(?P<pk>\d+)$', PatiotanqueUpdate.as_view(), name='edittankfarm'),
    url(r'^borrar/(?P<pk>\d+)$', PatiotanqueDelete.as_view(), name='deletetankfarm'),
	

]

