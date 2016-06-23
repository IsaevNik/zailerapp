# -*- coding: utf-8 -*-
import json

from django.shortcuts import render, get_object_or_404, render_to_response
from django.http import Http404, HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse
from django.core.mail import mail_managers

from .models import PortfolioItem, Project, Service, HomePageSliderItem, CarForSale

# Create your views here. order_by('-pub_date')
def index(request):
	portfolio_items = PortfolioItem.objects.order_by('-pub_date')
	services_items = Service.objects.all()
	slider_items = HomePageSliderItem.objects.order_by('order_number')
	return render(request, 'zailer/index.html', {'portfolio_items': portfolio_items,
												 'services_items': services_items,
												 'slider_items': slider_items})

def auto(request):
	services_items = Service.objects.all()
	cars = CarForSale.objects.all()
	cars_for_sale = [{'car': car, 'img_preview': car.carforsaleimage_set.get(is_preview=True)} for car in cars]
	return render(request, 'zailer/auto.html',{'services_items': services_items,
											   'cars_for_sale': cars_for_sale})

def project(request, project_id):
	project = get_object_or_404(Project, pk=project_id)
	return render(request, 'zailer/project.html', {'project': project})

def service(request, service_id):
	service = get_object_or_404(Service, pk=service_id)
	services_items = Service.objects.all()
	return render(request, 'zailer/service.html', {'service': service,
												    'services_items': services_items})
def singlecar(request, car_id):
	car = get_object_or_404(CarForSale, pk=car_id)
	return render(request, 'zailer/singlecar.html', {'car': car})

def sendemail(request):
	if request.method == 'GET':
		raise Http404
	subject = request.POST.get('subject')
	name = request.POST.get('name')
	comments = request.POST.get('comments')
	email = request.POST.get('email')
	msg = u'name:{}\ncomments:{}\nemail:{}\n'.format(
													name,
													comments,
													email)

	try:
		mail_managers(subject, msg)
	except Exception:	
 		return HttpResponse({'Error'})
 	else:
 		return HttpResponse({'OK'})

