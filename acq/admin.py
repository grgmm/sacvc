from django.contrib import admin
from .models import Tag, UserProfile, Analogico, Digital, PatioTanque, Tk, Analogico_Hs0, Analogico_Hs1, Analogico_Hs2, Analogico_Hs3, Analogico_Hs4, Analogico_Hs5, Tct, Analogico_Hs0, Analogico_Hs

# Register your models here.

# admin.site.register(Tag)
admin.site.register(Analogico)
admin.site.register(Digital)
admin.site.register(PatioTanque)
admin.site.register(Tk)
admin.site.register(Analogico_Hs)
admin.site.register(Analogico_Hs0)
admin.site.register(Analogico_Hs1)
admin.site.register(Analogico_Hs2)
admin.site.register(Analogico_Hs3)
admin.site.register(Analogico_Hs4)
admin.site.register(Analogico_Hs5)
admin.site.register(Tct)
admin.site.register(UserProfile)
