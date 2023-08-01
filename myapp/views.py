import math

from django.shortcuts import render, redirect
from django.contrib import messages
from django.http import HttpResponse
from .models import Blog, justcontact, Products, Contact,Orders,OrderUpdates
from .forms import InputForm, ModelForm
from django.core.mail import send_mail, EmailMessage
from django.template.loader import render_to_string
from django.core.exceptions import ObjectDoesNotExist
import json
from django.views.decorators.csrf import csrf_exempt

def index(request):

    categories = Products.objects.values('category')
    uniquecategories = list({item['category'] for item in categories})
    products = dict()
    for u in uniquecategories:
        products[u] = Products.objects.filter(category=u)
    products = dict(
        sorted(products.items(), key=lambda x: len(x[1]), reverse=True))
    numberofproducts = len(products)
    numberofslides = (numberofproducts // 3 +
                      math.ceil(numberofproducts/3 - numberofproducts//3))-1
    n = range(numberofslides)
    data = dict()
    data['numberofslides'] = n
    data['products'] = products
    return render(request, './myapp/index.html', data)

def matchQuery(query,product):
    if query in product.desc.lower() or query in product.product_name.lower() or query in product.category.lower() or query in product.subcategory.lower():
        return True
    else:
        return False
def search(request):
    query=request.GET['search']
    query=query.lower()
    categories = Products.objects.values('category')
    uniquecategories = list({item['category'] for item in categories})
    products = dict()
    for u in uniquecategories:
        products[u] = Products.objects.filter(category=u)
        
    searchproducts=dict()
    if len(query)>3:
        for category,products_queryset in products.items():
            matching_products=[product for product in products_queryset if matchQuery(query,product)]
            if len(matching_products)!=0:
                searchproducts[category]=matching_products
        searchproducts = dict(
            sorted(searchproducts.items(), key=lambda x: len(x[1]), reverse=True))
    numberofproducts = len(searchproducts)
    numberofslides = (numberofproducts // 3 +
                        math.ceil(numberofproducts/3 - numberofproducts//3))-1
    n = range(numberofslides)
    data = dict()
    data['numberofslides'] = n
    data['products'] = searchproducts
    return render(request, './myapp/search.html', data)

def about(request):
    return render(request, './myapp/about.html')


def contact(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        email = request.POST.get('email')
        number = request.POST.get('number')
        concern = request.POST.get('concern')
        Contact.objects.create(name=name, email=email,
                               number=number, concern=concern)
        messages.success(
            request, 'Thanks for Contacting Us! Your response has been recorded')
        send_mail(subject='New Response on the Website', message=f'Name:{name}\nEmail:{email}\nNumber:{number}\nConcern:{concern}',
                  from_email='saqibturk4092@outlook.com', recipient_list=['mohdsaqib148183@gmail.com'], fail_silently=False)
        # fail_silently: A boolean. When it’s False, send_mail() will raise an smtplib.SMTPException if an error occurs.
        # See the smtplib docs for a list of possible exceptions, all of which are subclasses of SMTPException.
        return redirect('/myapp/contact/')

    return render(request, './myapp/contact.html')

# views.py


def send_email_with_template_view(request):
    subject = 'Hello from Your Ecommerce Website'
    from_email = 'saqibturk4092@outlook.com'  # Your email address
    # List of recipient email addresses
    recipient_list = ['mohdsaqib148183@gmail.com']

    # Render the email template with context data
    context = {'username': 'John Doe'}  # Example context data
    message = render_to_string('./myapp/email_template.html', context)

    email = EmailMessage(subject, message, from_email, recipient_list)
    email.content_subtype = 'html'  # Set the content type as HTML

    email.send()

    return render(request, './myapp/email_sent.html')


def tracker(request):
        if request.method == 'POST':
            orderId = request.POST.get('idoforder',1)
            email = request.POST.get('email')

            print(orderId,email)
            try:
                order=Orders.objects.get(order_id=orderId,email=email)
                
                if not type(order)==None:
                    update=OrderUpdates.objects.filter(order_id=orderId)
                    print(type(update[0].timestamp))
                    updates=list()
                    for u in update:
                        # updates.append({'itemtext':u.update_desc,'time':u.timestamp.isoformat()})
                        updates.append({'itemtext':u.update_desc,'time':u.timestamp.strftime("%A, %d %B %Y")})
                        response=json.dumps({'status':'success','updates':updates,'json_data':order.json_data})
                        print(response)
                        print(type(response))
                    return HttpResponse(response)
        
            except ObjectDoesNotExist:
                print('the order does not exist')
                return HttpResponse('{"status":"item does not exist"}')
         
        return render(request, './myapp/tracker.html')



def productView(request, id):

    product = Products.objects.get(product_id=id)
    data = {'product': product}
    return render(request, './myapp/productView.html', data)


def checkout(request):
    if request.method == 'POST':
        fname = request.POST.get('fname')
        amount = request.POST.get('amount')
        print(amount)
        lname = request.POST.get('lname')
        email = request.POST.get('email')
        number = request.POST.get('number')
        address1 = request.POST.get('add1')
        address2 = request.POST.get('add2')
        city = request.POST.get('city')
        state = request.POST.get('state')
        zip_code = request.POST.get('zipcode')
        addressType = request.POST.get('addressType')
        itemsJson=request.POST.get('itemsJson')
        order=Orders.objects.create(fname=fname,lname=lname,phoneNumber=number,email=email,address=address1,address2=address2,city=city,state=state,zip_code=zip_code,addressType=addressType,json_data=itemsJson,amount=amount)
        print(itemsJson)
        thanks=True
        id=order.order_id
        update=OrderUpdates(order_id=order.order_id,update_desc="Your Order has been placed successfully")
        update.save()
        return render(request, './myapp/checkout.html',{'thanks':thanks,'id':id})
        # Request Paytm to transfer the amount to your account after payement
    return render(request, './myapp/checkout.html')


def hello(request, name):
    return HttpResponse("<h1>This is an app</h1>")


def add(request):
    if request.method == "POST":
        name = request.POST.get("name")
        tagline = request.POST.get("tagline")
        file = request.POST.get("file")
        image = request.POST.get("image")
        email = request.POST.get('email')
        address = request.POST.get('address')
        url = request.POST.get('url')
        # b = Blog(name=name, tagline=tagline,file=file,image=image,email=email,address=address,url=url)
        # this is equivalent to create instance and then save() .
        b = Blog.objects.create(name=name, tagline=tagline, file=file,
                                image=image, email=email, address=address, url=url)
        c = justcontact(id=1, name=name)
        # c.save()
        print(b)
        b.save()
        return HttpResponse('Data is added')

    return render(request, './myapp/form.html')


def showdata(request):
    obj = Blog.objects.all()
    return render(request, './myapp/formdata.html', {'data': obj})
# Create your views here.


def form(request):
    if request.method == 'POST':
        return HttpResponse('Sucess')

    data = dict()
    data['form'] = ModelForm()
    return render(request, './myapp/djangoform.html', data)

@csrf_exempt
def handlePayement(request):
    # Paytm will send you post request here 
    pass
