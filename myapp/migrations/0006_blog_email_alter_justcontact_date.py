# Generated by Django 4.2.3 on 2023-07-14 22:38

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0005_blog_address_alter_justcontact_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='blog',
            name='email',
            field=models.EmailField(default=None, max_length=254),
        ),
        migrations.AlterField(
            model_name='justcontact',
            name='date',
            field=models.DateTimeField(default=datetime.datetime(2023, 7, 15, 4, 8, 50, 202380)),
        ),
    ]