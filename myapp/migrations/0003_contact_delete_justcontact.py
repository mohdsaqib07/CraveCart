# Generated by Django 4.2.3 on 2023-07-14 21:22

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0002_justcontact_delete_contact'),
    ]

    operations = [
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=50)),
                ('date', models.DateTimeField(default=datetime.datetime(2023, 7, 15, 2, 52, 50, 23148))),
            ],
        ),
        migrations.DeleteModel(
            name='Justcontact',
        ),
    ]