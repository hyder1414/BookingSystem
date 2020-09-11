from django.urls import path, re_path
from . import views
urlpatterns=[

    path('feedback_list',views.feedback_list, name='feedback_list'),
    re_path(r'^feedback_edit/(?P<pk>/d+)/', views.FeedbackEdit.as_view(), name='feedback-edit'),
    path('workorder_list',views.workorder_list, name='workorder_list'),
    path('reservation_list',views.reservation_list, name='reservation_list'),
    path('flight_list',views.flight_list, name='flight_list'),
    path('sales_list',views.sales_list, name='sales_list'),
    path('',views.index, name='index'),

    ]