from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from django.utils import timezone
from .models import Post

# Create your views here.

def index(request):
#	return HttpResponse("Hello, world. Your're at the polls index.")
	posts = Post.objects.filter(published_date__lte=timezone.now()).order_by('published_date')
	return render(request,'testapp/post_list.html',{'posts':posts})


def post_detail(request, pk):
	post = get_object_or_404(Post,pk=pk)
	return render(request,'testapp/post_detail.html',{'post':post})

