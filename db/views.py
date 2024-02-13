from django.shortcuts import render, get_object_or_404, redirect
from django.core.paginator import Paginator
from db.models import *
from db.forms import *
from django.contrib import messages 
from datetime import datetime

def post_booking (request, id, template_name):
    form = BookingForm(request.POST)
    if form.is_valid():
        booking = form.save(commit=False)
        booking.order_date = datetime.now().strftime('%Y-%m-%d')
        booking.room = get_object_or_404(Room, id=id)
        booking.status = 'booked'
        booking.save()
        print("ajaaa")
        messages.success(request, 'Booking created!')
        return redirect('index')
    else:
        print(form.errors)
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