from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from django.utils import timezone

from django.shortcuts import render

import os

# Create your views here.

def index(request):
	TMP_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
	f = open(os.path.join(TMP_DIR,'templates/plotlyapp','test.txt'), 'w')
	string = 'python output string'
	f.write(string)
	f.close()

#	return HttpResponse("Hello, plotly.")
	return render(request,'plotlyapp/data.html',{})
	