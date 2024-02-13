from django import forms
from db.models import *
from django import forms



class BookingForm(forms.ModelForm):
    class Meta:
        model = Booking
        fields = ['check_in', 'check_out', 'full_name', 'email', 'phone', 'message']
        widgets = {
            'check_in': forms.DateInput(attrs={'class': 'sectionRoomMain__input', 'type': 'date'}),
            'check_out': forms.DateInput(attrs={'class': 'sectionRoomMain__input', 'type': 'date'}),
            'full_name': forms.TextInput(attrs={'class': 'sectionRoomMain__input', 'placeholder': 'Full Name'}),
            'email': forms.EmailInput(attrs={'class': 'sectionRoomMain__input', 'placeholder': 'Email'}),
            'phone': forms.TextInput(attrs={'class': 'sectionRoomMain__input', 'placeholder': 'Phone'}),
            'message': forms.Textarea(attrs={'class': 'sectionRoomMain__input', 'cols': 30, 'rows': 5, 'placeholder': 'Message'})
        }
