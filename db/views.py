from django.shortcuts import render
from django.core.paginator import Paginator
from db.models import Booking
from db.models import Room

def create_booking(request, template_name='details.html'):
    if request.method == 'POST':
        try:
            booking = Booking(**request.POST)
            booking.save()
            return render(request, template_name, {'data': booking})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})



def rooms(request, template_name='rooms.html'):
    if request.method == 'GET':
        try:
            rooms_list = Room.objects.all()
            paginator = Paginator(rooms_list, 10)  
            page_number = request.GET.get('page')
            rooms = paginator.get_page(page_number)
            return render(request, template_name, {'rooms': rooms})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})
        


        
def index(request, template_name='index.html'):
    if request.method == 'GET':
        try:
            single_bed = Room.objects.filter(room_type='Single Bed').first()
            double_bed = Room.objects.filter(room_type='Double Bed').first()
            double_superior = Room.objects.filter(room_type='Double Superior').first()
            suite = Room.objects.filter(room_type='Suite').first()
            
            return render(request, template_name, {'single_bed': single_bed, 'double_bed': double_bed, 'double_superior': double_superior, 'suite': suite})
        except Exception as e:
            return render(request, template_name, {'error': str(e)})

        


def about(request):
    return render(request, 'about.html')