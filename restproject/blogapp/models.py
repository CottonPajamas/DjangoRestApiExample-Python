from django.db import models
from quickstart.models import Review

def retrieveAllReviews():
    reviews = Review.objects.all()
    return reviews

def retrieveReviewById(id):
    return Review.objects.get(pk=id[0])
