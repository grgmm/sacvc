from django.test import SimpleTestCase
from django.urls import resolve, reverse
from acq.views import *
from acq.models import *
#from acq.models import Tk, Tag, Analogico

from django.conf.urls import url

from django.contrib.auth.models import User

class TestUrls(SimpleTestCase):

    def test_login_url_resolves(self):
        url = reverse('sacvc:login')
        #print(resolve(url))
        self.assertEquals(resolve(url).func.view_class, LoginView)
        response = self.client.get('/sacvc/login')
        self.assertEqual(response.status_code, 301)


    def test_logout_url_resolves(self):

        url = reverse('sacvc:logout')
    #    print(resolve(url))
        self.assertEquals(resolve(url).func.view_class, LogoutView)
        response = self.client.get('/sacvc/logout')
        self.assertEqual(response.status_code, 301)

    def test_menu_url_resolves(self):

        url = reverse('sacvc:Menu')
        #print(resolve(url))
        self.assertEquals(resolve(url).func.view_class, Menu)
        response = self.client.get('/sacvc/Menu')
        self.assertEqual(response.status_code, 301)

    def test_list_tf_url_resolves(self):

        url = reverse('sacvc:list_tf')
        #print(resolve(url))
        self.assertEquals(resolve(url).func.view_class, patiotanquelist)
        response = self.client.get('/sacvc/list_tankfarm')
        self.assertEqual(response.status_code, 301)

    def test_add_tf_url_resolves(self):

        url = reverse('sacvc:add_tf')

        self.assertEquals(resolve(url).func.view_class, PatiotanqueAdd)
        response = self.client.get('/sacvc/add_tf')
        self.assertEqual(response.status_code, 301)

    def test_add_tk_url_resolves(self):

        url = reverse('sacvc:add_tk')

            #url= '/sacvc/add_tk'
        self.assertEquals(resolve(url).func.view_class, TkAdd)
        response = self.client.get('/sacvc/add_tk')
        self.assertEqual(response.status_code, 301)


    def test_list_usr_url_resolves(self):

        url = reverse('sacvc:list_usr')
        #print(resolve(url))
        self.assertEquals(resolve(url).func.view_class,usuarioslist)
        response = self.client.get('/sacvc/list_usr')
        self.assertEqual(response.status_code, 301)


    def test_add_usr_url_resolves(self):

        url = reverse('sacvc:add_usr')

            #url= '/sacvc/add_tk'
        self.assertEquals(resolve(url).func.view_class, usuariosadd)
        response = self.client.get('/sacvc/add_usr')
        self.assertEqual(response.status_code, 301)
