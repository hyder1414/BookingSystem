from django.shortcuts import render
from datetime import date
from django.shortcuts import render, get_object_or_404
from django.views.generic import DetailView, ListView
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
from .models import Flightschedule, Reservation, Feedback, Airport, Airplane



def index(request):
    title = " Low fares to place you love"
    intro = " Travel Advisory:Coronavirus Update"
    return render(request, 'airlineapp/index.html', {'title': title, 'intro': intro})


def flight_list(request):
    flightlist = Flightschedule.objects.all()
    return render(request, 'airlineapp/flightlist.html', {'title': 'List of Flight', 'flightlist': flightlist})

def reservation_list(request):
    reservationlist = Reservation.objects.all()
    return render(request, 'airlineapp/reservationlist.html', {'title': 'List of Reservation', 'reservationlist': reservationlist})

def feedback_list(request):
    feedbacklist = Feedback.objects.all()
    return render(request, 'airlineapp/feedbacklist.html', {'title': 'List of Feedback', 'feedbacklist': feedbacklist})
class FeedbackEdit(UpdateView):
    model=Feedback
    fields=['feedbackid', 'rating', 'note', 'reservationid']
    success_url=reverse_lazy('feedback_list')

def workorder_list(request):
    workorderlist = Airport.objects.all()
    return render(request, 'airlineapp/workorderlist.html', {'title': 'List of workorders', 'workorderlist': workorderlist})

def sales_list(request):
    flightlist = Flightschedule.objects.all()
    return render(request, 'airlineapp/saleslist.html', {'title': 'List of Flight', 'flightlist': flightlist})