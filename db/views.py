from django.shortcuts import render, get_object_or_404, redirect
from django.core.paginator import Paginator
from db.models import *
from db.forms import *
from django.contrib import messages 
from datetime import datetime
import time

def post_booking (request, id, template_name):
    form = BookingForm(request.POST)
    if form.is_valid():
        booking = form.save(commit=False)
        booking.order_date = datetime.now().strftime('%Y-%m-%d')
        booking.room = get_object_or_404(Room, id=id)
        booking.status = 'booked'
        booking.save()
        messages.success(request, 'Booking created!')
        time.sleep(3)
        return redirect('index')
    else:
        messages.error(request, 'Sorry something failed, pleade contact us by phone')
        return render(request, template_name, {'form': form})


def room_details(request,id, template_name='details.html'):
    room = get_object_or_404(Room, id=id)
    rooms = Room.objects.all()
    single_bed = Room.objects.filter(room_type='Single Bed').first()
    double_bed = Room.objects.filter(room_type='Double Bed').first()
    double_superior = Room.objects.filter(room_type='Double Superior').first()
    suite = Room.objects.filter(room_type='Suite').first()
    if room.offer: 
        room.price_night = int(room.price_night * (1 - room.discount/100))

    form = BookingForm()
    return render(request, template_name, { 'room': room, 'rooms': rooms, 'form': form, 'single_bed': single_bed, 'double_bed': double_bed, 'double_superior': double_superior, 'suite': suite})
        
def manage_room_details(request, id, template_name='details.html'):
    if request.method == 'POST':
        return post_booking(request, id, template_name)
    else:
        return room_details(request, id, template_name)
    
def rooms(request, template_name='rooms.html'):    
    rooms_list = Room.objects.filter(is_booked=False)
    paginator = Paginator(rooms_list, 10)  
    page_number = request.GET.get('page')
    rooms = paginator.get_page(page_number)
    return render(request, template_name, {'rooms': rooms})
    
    
def index(request, template_name='index.html'):
    
    single_bed = Room.objects.filter(room_type='Single Bed').first()
    double_bed = Room.objects.filter(room_type='Double Bed').first()
    double_superior = Room.objects.filter(room_type='Double Superior').first()
    suite = Room.objects.filter(room_type='Suite').first()
    
    return render(request, template_name, {'single_bed': single_bed, 'double_bed': double_bed, 'double_superior': double_superior, 'suite': suite})
      
def about(request):
    return render(request, 'about.html')

def offers(request, template_name ='offers.html'):
    rooms_list = Room.objects.filter(offer = True)
    double_superior = Room.objects.filter(room_type='Double Superior').first()
    if double_superior.offer: 
        double_superior.price_night = int(double_superior.price_night * (1 - double_superior.discount/100))
    suite = Room.objects.filter(room_type='Suite').first()
    if suite.offer: 
        suite.price_night = int(suite.price_night * (1 - suite.discount/100))
    for room in rooms_list:
        room.discount_price = int(room.price_night * (1 - room.discount/100))
    paginator = Paginator(rooms_list, 3)  
    page_number = request.GET.get('page')
    rooms = paginator.get_page(page_number)
    return render(request, template_name, {'rooms': rooms, 'double_superior': double_superior, 'suite': suite})



def post_contact(request, template_name ='contact.html'):
    form = ContactForm(request.POST)
    if form.is_valid():
        contact= form.save(commit=False)
        contact.photo = "https://avatars.githubusercontent.com/u/84708157"
        contact.date = datetime.now().strftime('%Y-%m-%d')
        contact.is_archived = False
        contact.save()
        messages.success(request, 'Contact created!')
        time.sleep(3)
        return redirect('index')
    else:
        messages.error(request, 'Sorry something failed, pleade contact us by phone')
        return render(request, template_name, {'form': form})
    
def manage_contact(request, template_name='contact.html'):
    if request.method == 'POST':
        return post_contact(request, template_name)
    else:
        form = ContactForm()
        return render(request, template_name,{'form':form})