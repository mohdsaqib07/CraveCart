from django.contrib import admin
from django.urls import path
from zmq.sugar import tracker

from .views import *


urlpatterns = [
  path('', index, name='Home'),
  path('about/',about,name='AboutUs'),
  path('contact/',contact,name='ContactUs'),
  path('tracker/',tracker,name='OrderStatus'),
  path('search/',search,name='Search'),
  path('productview/<int:id>',productView,name='ProductView'),
  path('checkout/',checkout,name='Checkout'),
  path('name/<str:name>/',hello,name="hello"),
  path('add/',add,name='adddata'),
  path('showdata',showdata,name='showdata'),
  path('form/',form,name='form'),
  path('email/',send_email_with_template_view,name='email_from_template'),
  path('handlepayement/',handlePayement,name='handlePayement'),
]
