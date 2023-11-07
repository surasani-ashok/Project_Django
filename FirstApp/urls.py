from django.urls import path

from FirstApp import views #new

urlpatterns = [
    path('', views.home, name='home'), #new
]
