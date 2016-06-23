# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-06-23 06:51
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('zailer', '0005_service'),
    ]

    operations = [
        migrations.CreateModel(
            name='HomePageSliderItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200)),
                ('subtitle', models.CharField(max_length=200)),
                ('button_text', models.CharField(max_length=50)),
                ('button_url', models.CharField(max_length=200)),
                ('img_url', models.CharField(max_length=200)),
                ('slide_title', models.CharField(max_length=50)),
            ],
        ),
        migrations.RemoveField(
            model_name='project',
            name='video_url',
        ),
        migrations.AddField(
            model_name='portfolioitem',
            name='pub_date',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='date published'),
        ),
    ]