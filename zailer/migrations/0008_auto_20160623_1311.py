# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-06-23 10:11
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('zailer', '0007_carforsale'),
    ]

    operations = [
        migrations.CreateModel(
            name='CarForSaleImage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('img_url', models.CharField(max_length=200)),
                ('is_preview', models.BooleanField(default=False)),
            ],
        ),
        migrations.RemoveField(
            model_name='carforsale',
            name='img_preview',
        ),
        migrations.AddField(
            model_name='homepageslideritem',
            name='order_number',
            field=models.IntegerField(default=1, unique=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='carforsaleimage',
            name='car_for_sale',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='zailer.CarForSale'),
        ),
    ]