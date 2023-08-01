from django.contrib import admin
from .models import Blog,responses,justcontact,Products,Contact,Orders,OrderUpdates
admin.site.register(Blog)
admin.site.register(responses)
admin.site.register(justcontact)

admin.site.register(Products)
admin.site.register(Contact)
admin.site.register(Orders)
admin.site.register(OrderUpdates)

# Register your models here.
