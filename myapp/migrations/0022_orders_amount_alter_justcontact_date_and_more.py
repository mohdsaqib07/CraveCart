# Generated by Django 4.2.3 on 2023-07-30 12:08

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0021_alter_orderupdates_options_alter_justcontact_date_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='orders',
            name='amount',
            field=models.IntegerField(default=0, max_length=500),
        ),
        migrations.AlterField(
            model_name='justcontact',
            name='date',
            field=models.DateTimeField(default=datetime.datetime(2023, 7, 30, 17, 38, 3, 689823)),
        ),
        migrations.AlterField(
            model_name='orders',
            name='datetime',
            field=models.DateTimeField(default=datetime.datetime(2023, 7, 30, 17, 38, 3, 692822)),
        ),
        migrations.AlterField(
            model_name='products',
            name='pub_date',
            field=models.DateTimeField(default=datetime.datetime(2023, 7, 30, 17, 38, 3, 690823)),
        ),
    ]
