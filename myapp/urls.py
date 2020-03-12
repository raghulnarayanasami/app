from django.urls import path

from . import views

urlpatterns = [

   path('', views.user_login, name='index'),
   path('storage/', views.storagedata, name='storage'),
   path('s3bucket/', views.s3bucket, name='s3bucket'),
   path('selenium/', views.selenium, name='selenium'),
   path('logout/', views.user_logout, name='logout'),

]
