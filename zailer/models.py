from __future__ import unicode_literals
import datetime

from django.utils.encoding import python_2_unicode_compatible
from django.db import models
from django.utils import timezone


# Create your models here.

@python_2_unicode_compatible
class PortfolioItem(models.Model):
	name = models.CharField(max_length=200)
	mark_name = models.CharField(max_length=50)
	model = models.CharField(max_length=20, blank=True)
	years = models.CharField(max_length=20, blank=True)
	desc = models.CharField(max_length=50, blank=True)
	img_url = models.CharField(max_length=200)

	def __str__(self):
		return self.name

@python_2_unicode_compatible
class Project(models.Model):
	portfolio_item = models.OneToOneField(
		PortfolioItem,
		on_delete=models.CASCADE,
		primary_key=True
	)
	name = models.CharField(max_length=200)
	mark = models.CharField(max_length=40)
	model = models.CharField(max_length=200)
	description = models.TextField()
	video_url = models.CharField(max_length=200, blank=True)

	def __str__(self):
		return self.name

@python_2_unicode_compatible
class ProjectImage(models.Model):
	project = models.ForeignKey(Project, on_delete=models.CASCADE)
	img_url = models.CharField(max_length=200)

	def __str__(self):
		return self.img_url


@python_2_unicode_compatible
class Service(models.Model):
	name = models.CharField(max_length=100)
	description = models.TextField()
	img_url = models.CharField(max_length=200)

	def __str__(self):
		return self.name