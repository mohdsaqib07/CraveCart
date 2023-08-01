from django import forms
from .models import Blog
class InputForm(forms.Form):
    name=forms.CharField(max_length=50)
    number=forms.CharField(max_length=13)
    description=forms.CharField(max_length=250)
    password=forms.IntegerField(widget=forms.PasswordInput())
    # button = forms.CharField(initial="Submit")

class ModelForm(forms.Form):
    
    class Meta:
        model = Blog
        fields = "__all__"
        


