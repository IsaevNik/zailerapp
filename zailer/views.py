import json

from django.shortcuts import render, get_object_or_404, render_to_response
from django.http import Http404, HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse

from .models import PortfolioItem, Project, Service

# Create your views here.
def index(request):
	portfolioItems = PortfolioItem.objects.all()
	services_items = Service.objects.all()
	return render(request, 'zailer/index.html', {'portfolioItems': portfolioItems,
												 'services_items': services_items})

def auto(request):
	services_items = Service.objects.all()
	return render(request, 'zailer/auto.html',{'services_items': services_items})

def project(request, project_id):
	project = get_object_or_404(Project, pk=project_id)
	return render(request, 'zailer/project.html', {'project': project})

def service(request, service_id):
	service = get_object_or_404(Service, pk=service_id)
	services_items = Service.objects.all()
	return render(request, 'zailer/service.html', {'service': service,
												    'services_items': services_items})

'''	project = get_object_or_404(Project, pk=project_id) 
def detail(request, question_id):
	question = get_object_or_404(Question, pk=question_id)
	return render(request, 'polls/detail.html', {'question': question})


def results(request, question_id):
	question = get_object_or_404(Question, pk=question_id)
	return render(request, 'polls/results.html', {'question': question})

def vote(request, question_id):
	question = get_object_or_404(Question, pk=question_id)
	try:
		selected_choice = question.choice_set.get(pk=request.POST['choice'])
	except (KeyError, Choice.DoesNotExist):
		return render(request, 'polls/detail.html', {
            'question': question,
            'error_message': "You didn't select a choice.",
		})
	else:
		selected_choice.votes += 1
		selected_choice.save()
		return HttpResponseRedirect(reverse('polls:results', args=(question.id,)))'''