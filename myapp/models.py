from django.db import models
from datetime import datetime
from django.utils import timezone

# Create your models here.


# It’s important to add __str__() methods to your models, not only for your own convenience when dealing with the interactive
# prompt, but also because objects’ representations are used throughout Django’s automatically-generated admin.
class Blog(models.Model):
    name = models.CharField(max_length=100,help_text='enter name')
    tagline = models.TextField()
    file=models.FileField(editable=False)
    image=models.ImageField()
    address=models.TextField()
    email=models.EmailField(default=None)
    url=models.URLField()

    def __str__(self):
        return self.name

class justcontact(models.Model):
    id=models.IntegerField(primary_key=True)
    name=models.CharField(max_length=50)
    date=models.DateTimeField(default=datetime.now())

class responses(models.Model):
    sno=models.AutoField(primary_key=True)
    name=models.CharField(max_length=50,null=True)
    number=models.IntegerField(null=False)
    address=models.TextField(null=True)
    image=models.ImageField(default='image')

    def __str__(self):
        return str(self.number)

class Products(models.Model):
    product_id=models.AutoField(primary_key=True)
    product_name=models.CharField(max_length=50)
    category=models.CharField(max_length=50,default="")
    subcategory=models.CharField(max_length=50,default="")
    price=models.IntegerField(default=0)
    desc=models.CharField(max_length=1000)
    pub_date=models.DateTimeField(default=datetime.now())
    image=models.ImageField(upload_to="myapp/images",default="")
    
    class Meta:
        verbose_name_plural = "Products"
        verbose_name = "Products"
    def __str__(self) -> str:
        return self.product_name

class Contact(models.Model):
    sno=models.AutoField(primary_key=True)
    name=models.CharField(max_length=50)
    email=models.EmailField(max_length=25)
    number=models.CharField(max_length=13)
    concern=models.TextField(max_length=500)

    def __str__(self):
        return str(self.sno)
    
class Orders(models.Model):
    order_id=models.AutoField(primary_key=True)
    json_data=models.CharField(max_length=500,default={})
    fname=models.CharField(max_length=50)
    lname=models.CharField(max_length=50)
    phoneNumber=models.CharField(max_length=13)
    email=models.EmailField(max_length=25)
    address=models.CharField(max_length=500)
    address2=models.CharField(max_length=500)
    city=models.CharField(max_length=50)
    state=models.CharField(max_length=50)
    zip_code=models.CharField(max_length=50)
    addressType=models.CharField(max_length=12)
    datetime=models.DateTimeField(default=datetime.now())
    amount=models.IntegerField(default=0)
    class Meta:
        verbose_name_plural="Orders"
        verbose_name="Orders"

    def __str__(self) -> str:
        return str(self.order_id)

class OrderUpdates(models.Model):
    update_id=models.AutoField(primary_key=True)
    order_id=models.IntegerField(default="")
    update_desc=models.CharField(max_length=5000)
    timestamp=models.DateField(auto_now_add=True)

    def __str__(self):
        return self.update_desc[0:11] + "..."
    
    class Meta:
        verbose_name="Order Updates"
        verbose_name_plural="Order Updates"
