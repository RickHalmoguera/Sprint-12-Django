from django.shortcuts import render
from db.models import Booking
from db.models import Contact
from db.models import Room

def create_booking(request, template_name='details.html'):
    if request.method == 'POST':
        try:
            booking = Booking(**request.POST)
            booking.save()
            return render(request, template_name, {'data': booking})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})

def contact_create(request, template_name='contact.html'):
    if request.method == 'POST':
        try:
            contact = Contact(request.POST or None)
            contact.save()
            return render(request, template_name, {'data':contact})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})
    return render(request, 'contact.html')

def rooms(request, template_name='rooms.html'):
    if request.method == 'GET':
        try:
            rooms = Room.objects.all()
            return render(request, template_name, {'rooms': rooms})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})
        
def rooms(request, template_name='details.html'):
    if request.method == 'GET':
        try:
            rooms = Room.objects.all()
            available_rooms = [room for room in rooms if room.is_booked == True]
            return render(request, template_name, {'rooms': available_rooms})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})
        
def home_html(request):
    return render(request, 'index.html')


def about_html(request):
    return render(request, 'about.html')