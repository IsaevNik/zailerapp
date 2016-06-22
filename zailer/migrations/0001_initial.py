# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-06-22 00:23
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='PortfolioItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('mark_name', models.CharField(max_length=50)),
                ('model', models.CharField(default='', max_length=20)),
                ('years', models.CharField(default='', max_length=20)),
                ('desc', models.CharField(max_length=50)),
                ('img_url', models.URLField()),
                ('project_url', models.URLField()),
            ],
        ),
    ]