from django.test import SimpleTestCase
from django.urls import resolve, reverse
from acq.views import LoginView, LogoutView
from django.conf.urls import url

class TestUrls(SimpleTestCase):
    def test_login_url_resolves(self):

        url = reverse('sacvc:login')
    #    print(resolve(url))
        self.assertEquals(resolve(url).func.view_class, LoginView)

    def test_logout_url_resolves(self):

        url = reverse('sacvc:logout')
    #    print(resolve(url))
        self.assertEquals(resolve(url).func.view_class, LogoutView)

    def test_menu_url_resolves(self):

        url = reverse('sacvc:Menu')
        print(resolve(url))
        self.assertEquals(resolve(url).func.view_class, Menu)
