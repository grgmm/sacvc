from django.test import SimpleTestCase
from django.urls import resolve, reverse
from acq.views import LoginView, LogoutView, patiotanquelist, Menu, PatiotanqueDelete
from django.conf.urls import url

class TestUrls(SimpleTestCase):
    def test_login_url_resolves(self):

        url = reverse('sacvc:login')
        #print(resolve(url))
        self.assertEquals(resolve(url).func.view_class, LoginView)
        response = self.client.get('/sacvc/login')
        self.assertEqual(response.status_code, 301)

        #print(response)

    def test_logout_url_resolves(self):

        url = reverse('sacvc:logout')
    #    print(resolve(url))
        self.assertEquals(resolve(url).func.view_class, LogoutView)
        #self.assertEqual(response.status_code, 200)
        response = self.client.get('/sacvc/logout')
        self.assertEqual(response.status_code, 301)



    def test_menu_url_resolves(self):

        url = reverse('sacvc:Menu')
        #print(resolve(url))
        self.assertEquals(resolve(url).func.view_class, Menu)
        #self.assertEqual(response.status_code, 200)
        response = self.client.get('/sacvc/Menu')
        self.assertEqual(response.status_code, 301)


    def test_list_tf_url_resolves(self):

        url = reverse('sacvc:list_tf')
        print(resolve(url))
        self.assertEquals(resolve(url).func.view_class, patiotanquelist)
        #self.assertEqual(response.status_code, 200)
        response = self.client.get('/sacvc/list_tankfarm')
        self.assertEqual(response.status_code, 301)


    def test_delet_tf_url_resolves(self):

        #url = reverse('sacvc/delete_tf/15')
        #print(url)
        #print(resolve(url))
        #self.assertEquals(resolve(url).func.view_class, PatiotanqueDelete)
        #self.assertEqual(response.status_code, 200)
        response = self.client.get('sacvc:delete_tf/15')
        self.assertEqual(response.status_code, 301)


            #url(r'^delete_tf/(?P<pk>\d+)$', PatiotanqueDelete.as_view(), name='del_tf'),
