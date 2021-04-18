from django.urls import resolve, reverse
from acq.views import *
from acq.models import *
from django.test import TestCase
#from django.conf.urls import url

from django.contrib.auth.models import User

class testUrls2(TestCase):

         def setUp(self):

            supervisores= Group.objects.create(name='supervisores')
            operativos = Group.objects.create(name='operativos')
            supervisores.save()
            operativos.save()

            test_user1 = User.objects.create_user(username='testuser1', password='mm262517')
            test_user1.save()
            test_user2 = User.objects.create_user(username='testuser2', password='mm262517')
            test_user2.save()

            testuser1 = User.objects.get(username = 'testuser1')
            supervisores.user_set.add(testuser1)
            testuser1.save()
            supervisores.save()


            testuser2 = User.objects.get(username = 'testuser2')
            operativos.user_set.add(testuser2)
            operativos.save()
            testuser2.save()

            PATIO= PatioTanque.objects.create(Nombre='PATIO DE TANQUES X', Descriptor='PATIO DE TANQUES X')
            PATIO.save()


            TANQUE = Tk.objects.create(Nombre='TK X', Descriptor='TANQUE 1001 X', id_patioTanque= PATIO)
            #print(PATIOX.Nombre)
            TANQUE.save()

         def test_edit_tf_url_resolves(self):


                patio= PatioTanque.objects.all().last()
                patiopk=patio.pk
                url= '/sacvc/edit_tf/'+str(patiopk)
                response = self.client.get(url)
                self.assertEqual(response.status_code, 302)

         def test_delete_tf_url_resolves(self):

                patio= PatioTanque.objects.all().last()
                patiopk=patio.pk
                url= '/sacvc/delete_tf/'+str(patiopk)

                response = self.client.get(url)

                self.assertEqual(response.status_code, 302)

         def test_detail_tf_url_resolves(self):

                patio= PatioTanque.objects.all().first()
                patiopk=patio.pk
                url= '/sacvc/detail_tf/'+str(patiopk)

                response = self.client.get(url)

                self.assertEqual(response.status_code, 302)


         def test_list_tk_url_resolves(self):

               patio= PatioTanque.objects.all().first()
               patiopk=patio.pk
               url= '/sacvc/list_tk/'+str(patiopk)

               response = self.client.get(url)

               self.assertEqual(response.status_code, 200)


         def test_delete_tk_url_resolves(self):

              patio= PatioTanque.objects.all().first()
              patiopk=patio.pk

              filtrotanque= Tk.objects.filter(id_patioTanque= patio)

              for tanque in filtrotanque:

                  tanquepk=tanque.pk

              url= '/sacvc/delete_tk/'+str(tanquepk)
              response = self.client.get(url)

              self.assertEqual(response.status_code, 302)



         def test_detail_tk_url_resolves(self):

              patio= PatioTanque.objects.all().first()
              patiopk=patio.pk


              filtrotanque= Tk.objects.filter(id_patioTanque= patio)


              for tanque in filtrotanque:

                  tanquepk=tanque.pk

              url= '/sacvc/detail_tk/'+str(tanquepk)
              response = self.client.get(url)

              self.assertEqual(response.status_code, 302)


         def test_edit_tk_url_resolves(self):

              patio= PatioTanque.objects.all().first()
              patiopk=patio.pk


              filtrotanque= Tk.objects.filter(id_patioTanque= patio)


              for tanque in filtrotanque:

                 tanquepk=tanque.pk

              url= '/sacvc/edit_tk/'+str(tanquepk)
              response = self.client.get(url)

              self.assertEqual(response.status_code, 302)


         def test_edit_usr_url_resolves(self):

              usuario1 = User.objects.all().last()
              usuario1pk = usuario1.pk

              url= '/sacvc/edit_user/'+str(usuario1pk)
              response = self.client.get(url)

              self.assertEqual(response.status_code, 302)


         def test_delete_usr_url_resolves(self):

                usuario1 = User.objects.all().last()
                usuario1pk = usuario1.pk

                url= '/sacvc/del_user/'+str(usuario1pk)
                #print(url)

                response = self.client.get(url)
                #print(response)
                #print(response)
                self.assertEqual(response.status_code, 302)

         def test_detail_usr_url_resolves(self):

                usuario1 = User.objects.all().last()
                usuario1pk = usuario1.pk

                url= '/sacvc/detail_user/'+str(usuario1pk)
                print(url)

                response = self.client.get(url)
                print(response)
                #print(response)
                self.assertEqual(response.status_code, 302)
