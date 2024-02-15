from django import forms
from db.models import Booking, Contact

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

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['message'].required = False

class ContactForm(forms.ModelForm):
    class Meta:
        model = Contact
        fields = ['full_name','email', 'phone', 'subject','text']
        widgets = {
            'full_name': forms.TextInput(attrs={'class': 'sectionContactForm__input', 'placeholder': 'Full Name'}),
            'phone': forms.TextInput(attrs={'class': 'sectionContactForm__input', 'placeholder': 'Phone'}),
            'email': forms.EmailInput(attrs={'class': 'sectionContactForm__input', 'placeholder': 'Email'}),
            'subject': forms.TextInput(attrs={'class': 'sectionContactForm__input', 'placeholder': 'Subject'}),
            'text': forms.Textarea(attrs={'class': 'sectionContactForm__textArea', 'cols': 30, 'rows': 10, 'placeholder': 'Message'})
        }