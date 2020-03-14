import datetime
from django.db import models
from django.utils import timezone
from django.conf import settings

# Create your models here.



class Plotly(models.Model):
	data1 = models.FloatField(verbose_name='data1')
	data2 = models.FloatField(verbose_name='data2')
	year = models.IntegerField(verbose_name='year')
	prefecture = models.CharField(max_length=20,verbose_name='prefecture')
	area = models.CharField(max_length=20,verbose_name='area',null=True)
	pop = models.IntegerField(verbose_name='pop')

		