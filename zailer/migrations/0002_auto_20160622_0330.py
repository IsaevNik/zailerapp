# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-06-22 00:30
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('zailer', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='portfolioitem',
            name='img_url',
            field=models.CharField(max_length=200),
        ),
        migrations.AlterField(
            model_name='portfolioitem',
            name='project_url',
            field=models.CharField(max_length=200),
        ),
    ]