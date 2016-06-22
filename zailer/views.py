import json

from django.shortcuts import render, get_object_or_404, render_to_response
from django.http import Http404, HttpResponseRedirect, HttpResponse
from django.core.urlresolvers import reverse

from .models import PortfolioItem, Project

# Create your views here.
def index(request):
	portfolioItems = PortfolioItem.objects.all()
	return render(request, 'zailer/index.html', {'portfolioItems': portfolioItems})

def auto(request):
	return render(request, 'zailer/auto.html')

def rover(request):
	roverItems = PortfolioItem.objects.filter(mark_name='rover')
	return render(request, 'zailer/rover.html', {'portfolioItems': roverItems})

def project(request, project_id):
	project = get_object_or_404(Project, pk=project_id)
	return render(request, 'zailer/project2.html', {'project': project})

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