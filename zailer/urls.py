from django.conf.urls import url

from . import views

app_name = 'zailer'
urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^rover/$', views.rover, name='rover'),
	url(r'^auto/$', views.auto, name='auto'),
	url(r'^project/(?P<project_id>[0-9]+)$', views.project, name='project'),
]


	