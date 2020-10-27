from django.urls import path
from . import views
from django.conf.urls import url
from django.views.generic.base import TemplateView
from django.urls import path
from django.conf.urls import url
from .views import (
    patiotanquelist,
    PatiotanqueAdd,
    PatiotanqueDelete,
    PatiotanqueDetail,
    PatiotanqueUpdate,
    TkAdd,
    TkDelete,
    TkDetail,
    TkUpdate,
    tklist,
    Validar_Tct,
    integridad_TCT,
    guardar_TCT_BD,
    current_data,
    )
    

app_name = 'acq'    
urlpatterns = [
	
    url('actualizar/',views.actualizar, name='actualizar'), #CONVIERTE EL JSON DEL PV EN UNA URL

   
    path('PV/',TemplateView.as_view(template_name="acq/refrescar.html"), name='PV'),

   
    url(r'^integridad_TCT/(?P<pk>\d+)$' ,views.integridad_TCT, name='integridad_TCT'), #OJO

    url(r'^guardar_TCT_BD/(?P<pk>\d+)$' ,views.guardar_TCT_BD, name='guardar_TCT_BD'),
    
   
    path('', TemplateView.as_view(template_name="acq/main.html"), name='acq_main'), #principal (vacio)
	
   

    url(r'^list_tankfarm/$', patiotanquelist.as_view(), name='list_tf'), #LISTADO DE PATIOS DE TANQUES


    url(r'^delete_tf/(?P<pk>\d+)$', PatiotanqueDelete.as_view(), name='del_tf'),

    url(r'^detail_tf/(?P<pk>\d+)$', PatiotanqueDetail.as_view(), name='detail_tf'),

    
    url(r'^edit_tf/(?P<pk>\d+)$', PatiotanqueUpdate.as_view(), name='edit_tf'),

    url(r'^add_tf/$', PatiotanqueAdd.as_view(), name='add_tf'), 


    url(r'^list_tk/(?P<exp>\d+)$', tklist.as_view(), name='list_tk'),


    url(r'^delete_tk/(?P<pk>\d+)$', TkDelete.as_view(), name='del_tk'),

    url(r'^detail_tk/(?P<pk>\d+)$', TkDetail.as_view(), name='detail_tk'),

    
    url(r'^edit_tk/(?P<pk>\d+)$', TkUpdate.as_view(), name='edit_tk'),

    url(r'^add_tk/$', TkAdd.as_view(), name='add_tk'),


    url(r'^validar_tct/(?P<pk>\d+)$', Validar_Tct.as_view(), name='validar_tct'),

    url(r'^data_actual/$', current_data.as_view(), name='current_data'), #LISTADO DE PATIOS DE TANQUES 

]

