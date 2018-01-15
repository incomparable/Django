from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^details/(?P<id>\w(0,50))/$', views.details, name='details'),

    url(r'^add', views.add, name='add'),
    url(r'^delete', views.delete, name='delete'),

    url(r'^update', views.update, name='update'),
    url(r'^signup', views.signup, name='signup'),
    url(r'^login', views.login, name='login'),
    # url(r'^login/$', auth_views.login),
]
