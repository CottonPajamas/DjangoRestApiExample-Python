from django.shortcuts import render
from . import models

def index(request):
    args = models.retrieveAllReviews()
    return render(request, 'blog/index.html', {'reviews': args})

def details(request):
    arg = models.retrieveReviewById(request.GET.getlist('reviewid'))
    return render(request, 'blog/page.html', {'review': arg})