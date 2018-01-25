from django.shortcuts import render, redirect
from django.http import HttpResponse

# Create your views here.
from .models import Todo1


def index(request):
    todo = Todo1.objects.all()[:50]
    context = {
        'todos': todo
    }
    # return HttpResponse('hello world!')
    return render(request, 'index.html', context)


def details(request, id):
    todo = Todo1.objects.get(id=id)
    context = {
        'todo': todo
    }
    return render(request, 'details.html', context)


def add(request):
    if(request.method == 'POST'):
        title = request.POST['title']
        text = request.POST['text']
        todo = Todo1(title=title, text=text)
        todo.save()
        return redirect('/todo')
    else:
        return render(request, 'add.html')


def delete(request):
    if(request.method == 'POST'):
        id = request.POST['id']
        todo = Todo1(id=id)
        todo.delete()
        return redirect('/todo')
    else:
        todo = Todo1.objects.all()
        context = {
            'todos': todo
        }
        return render(request, 'delete.html', context)


def update(request):
    if(request.method == 'POST'):
        id = request.POST['id']
        print id
        title = request.POST['title']
        print title
        text = request.POST['text']
        print text
        todo = Todo1(id=id)
        print todo
        todo.update(title=title)
        todo.update(text=text)
        todo.save()
        return redirect('/todo')
    else:
        todo = Todo1.objects.all()
        context = {
            'todos': todo
        }
        return render(request, 'update.html', context)


def signup(request):
    if(request.method == 'POST'):
        id = request.POST['id']
        title = request.POST['title']
        text = request.POST['text']
        todo = Todo1(id=id)
        todo.save(id, title, text)
        return redirect('/todo')
    else:
        return render(request, 'signup.html')


def login(request):
    if(request.method == 'POST'):
        email = request.POST['email']
        password = request.POST['password']
        todo = user(email=email, password=password)
        todo.save(email, password)
        return redirect('/todo')
    else:
        return render(request, 'login.html')
