from django.shortcuts import render
from django.http import HttpResponse
from .models import Vocab

def index(request):


    
    context={

    }

    return render(request, 'greek_helper/vocab_list.html', context=context)
