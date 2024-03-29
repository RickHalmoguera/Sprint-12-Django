from django.db import models

class Room(models.Model):
    photo = models.CharField(max_length = 255)
    room_type = models.CharField(max_length = 255)
    room_number = models.IntegerField()
    description = models.CharField(max_length = 255)
    offer = models.BooleanField()
    price_night = models.IntegerField()
    discount = models.IntegerField()
    cancellation = models.CharField(max_length = 255)
    is_booked = models.BooleanField()
    amenities = models.JSONField()
    
class Contact(models.Model):
    full_name = models.CharField(max_length = 255)
    email = models.CharField(max_length = 255)
    phone = models.IntegerField()
    subject = models.CharField(max_length = 255)
    text =  models.CharField(max_length = 255)
    date = models.DateField()
    
class Booking(models.Model):
    full_name = models.CharField(max_length = 255)
    email = models.CharField(max_length = 255)
    phone = models.IntegerField()
    message = models.CharField(max_length = 255)
    order_date = models.DateField()
    check_in = models.DateField()
    check_out = models.DateField()
    room = models.ForeignKey(Room, on_delete=models.CASCADE)
    status = models.CharField(max_length = 255)
    


    