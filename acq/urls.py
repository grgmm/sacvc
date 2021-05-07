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
    LoginView,
    LogoutView,
    Menu,
    usuarioslist,
    usuariosedit,
    usuariosadd,
    usuariosdelete,
    usuariodetail,
    grupo_tk,
    edit_patio_user,
    Cambiar_Clave,
    #edit_groups_user
    )

app_name = 'sacvc'
urlpatterns = [

    path('', views.welcome, name= 'welcome'),

    url('actualizar/',views.actualizar, name='actualizar'), #CONVIERTE EL JSON DEL PV EN UNA URL

    path('PV/',TemplateView.as_view(template_name="acq/refrescar.html"), name='PV'),

    url(r'^integridad_TCT/(?P<pk>\d+)$' ,views.integridad_TCT, name='integridad_TCT'), #OJO

    url(r'^guardar_TCT_BD/(?P<pk>\d+)$' ,views.guardar_TCT_BD, name='guardar_TCT_BD'),

    path('', TemplateView.as_view(template_name="acq/main.html"), name='acq_main'), #principal (vacio)

    url(r'^list_tankfarm/$', patiotanquelist.as_view(), name='list_tf'), #Probada con módulo de prueba teste_url_simples

    url(r'^delete_tf/(?P<pk>\d+)$', PatiotanqueDelete.as_view(), name='del_tf'), #Probada con módulo de prueba teste_url_complejas

    url(r'^detail_tf/(?P<pk>\d+)$', PatiotanqueDetail.as_view(), name='detail_tf'), #Probada con módulo de prueba teste_url_complejas

    url(r'^edit_tf/(?P<pk>\d+)$', PatiotanqueUpdate.as_view(), name='edit_tf'), #Probada con módulo de prueba teste_url_complejas

    url(r'^add_tf/$', PatiotanqueAdd.as_view(), name='add_tf'), #Probada con módulo de prueba teste_url_complejas

    url(r'^list_tk/(?P<exp>\d+)$', tklist.as_view(), name='list_tk'), #Probada con módulo de prueba teste_url_simples

    url(r'^delete_tk/(?P<pk>\d+)$', TkDelete.as_view(), name='del_tk'), #Probada con módulo de prueba teste_url_complejas

    url(r'^detail_tk/(?P<pk>\d+)$', TkDetail.as_view(), name='detail_tk'), #Probada con módulo de prueba teste_url_complejas

    url(r'^edit_tk/(?P<pk>\d+)$', TkUpdate.as_view(), name='edit_tk'), #Probada con módulo de prueba teste_url_complejas

    url(r'^add_tk/$', TkAdd.as_view(), name='add_tk'), #Probada con módulo de prueba teste_url_complejas

    url(r'^validar_tct/(?P<pk>\d+)$', Validar_Tct.as_view(), name='validar_tct'),

    url(r'^data_actual/$', current_data.as_view(), name='current_data'), #LISTADO DE PATIOS DE TANQUES

    url('Valores_Actuales/',views.Valores_Actuales, name='Valores_Actuales'),

    url('login/',LoginView.as_view(), name='login'), #Probada con módulo de prueba teste_url_simples

    url(r'^logout/$', LogoutView.as_view(), name = "logout"), #Probada con módulo de prueba teste_url_simples

    url(r'^Menu/$', Menu.as_view(), name = "Menu"), #Probada con módulo de prueba teste_url_simples

    url(r'^list_user/$', usuarioslist.as_view(), name = "list_user"), #Probada con módulo de prueba teste_url_simples

    url(r'^edit_user/(?P<pk>\d+)$', usuariosedit.as_view(), name='edit_user'),

    url(r'^edit_patio_user/(?P<pk>\d+)$', edit_patio_user.as_view(), name='edit_patio_user'),

    url(r'^add_user/', usuariosadd.as_view(), name='add_user'),

    url(r'^del_user/(?P<pk>\d+)$', usuariosdelete.as_view(), name='del_user'),

    url(r'^detail_user/(?P<pk>\d+)$', usuariodetail.as_view(), name='detail_user'),

    url(r'^grupo_tk/$', grupo_tk.as_view(), name='grupo_tk'), #Probada con módulo de prueba teste_url_simples

    url(r'^cambiar_clave/(?P<pk>\d+)$', Cambiar_Clave.as_view(), name='cambiar_clave'), #Probada con módulo de prueba teste_url_simples

    #url(r'^grupos_usuario/(?P<pk>\d+)$', edit_groups_user.as_view(), name='grupos_usuario'),

]
