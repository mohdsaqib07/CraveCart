# Generated by Django 4.2.3 on 2023-07-14 22:35

import datetime
from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0004_justcontact_delete_contact_blog_file_blog_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='blog',
            name='address',
            field=models.TextField(default=django.utils.timezone.now),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='justcontact',
            name='date',
            field=models.DateTimeField(default=datetime.datetime(2023, 7, 15, 4, 4, 46, 49771)),
        ),
    ]
