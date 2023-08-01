# Generated by Django 4.2.3 on 2023-07-16 12:08

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0010_blog_url_alter_justcontact_date'),
    ]

    operations = [
        migrations.CreateModel(
            name='Products',
            fields=[
                ('product_id', models.AutoField(primary_key=True, serialize=False)),
                ('product_name', models.CharField(max_length=50)),
                ('category', models.CharField(default='', max_length=50)),
                ('subcategory', models.CharField(default='', max_length=50)),
                ('price', models.IntegerField(default=0)),
                ('desc', models.CharField(max_length=300)),
                ('pub_date', models.DateTimeField(default=datetime.datetime(2023, 7, 16, 17, 37, 46, 829228))),
                ('image', models.ImageField(default='', upload_to='myapp/images')),
            ],
        ),
        migrations.AlterField(
            model_name='blog',
            name='file',
            field=models.FileField(editable=False, upload_to=''),
        ),
        migrations.AlterField(
            model_name='blog',
            name='name',
            field=models.CharField(help_text='enter name', max_length=100),
        ),
        migrations.AlterField(
            model_name='justcontact',
            name='date',
            field=models.DateTimeField(default=datetime.datetime(2023, 7, 16, 17, 37, 46, 828228)),
        ),
        migrations.AlterField(
            model_name='responses',
            name='name',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='responses',
            name='number',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
    ]