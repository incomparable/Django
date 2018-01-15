from __future__ import unicode_literals
from datetime import datetime
from django.db import models

class Todo1(models.Model):
    title = models.CharField(max_length=200)
    text = models.TextField()
    create_at = models.DateTimeField(default=datetime.now)

    def __str__(self):
        return self.title


class User(models.Model):
    username = models.CharField(max_length=200)
    email = models.CharField(max_length=200)
    password = models.CharField(max_length=200)

    def __str__(self):
        return self.username
