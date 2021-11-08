from django.db import models
from django.conf import settings

# Create your models here.

class Category(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name

class MyModelBase(models.Model):
    subject = models.CharField(max_length=255)
    image = models.ImageField(upload_to='courses/%Y/%m', default=None)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=False)

    def __str__(self):
        return self.subject

    class Meta:
        abstract = True


class Course(MyModelBase):
    class Meta:
        unique_together = ('subject', 'category')
        ordering = ['-id']

    description = models.TextField()
    category = models.ForeignKey(Category, on_delete=models.SET_NULL, null=True)

class Tag(MyModelBase):
    name = models.CharField(max_length=255, unique=True)

class Lesson(MyModelBase):
    content = models.TextField()
    course = models.ForeignKey(
        to=Course,
        related_name='lessons',
        on_delete=models.CASCADE
    )

    tags = models.ManyToManyField(
        to=Tag,
        related_name='lessons',
        blank=True,
        null=True
    )

    class Meta:
        unique_together = ('subject', 'course')

class Comment(models.Model):
    content = models.TextField()
    lesson = models.ForeignKey(
        to=Lesson,
        on_delete = models.CASCADE,
    )
    creator = models.ForeignKey(
        to=settings.AUTH_USER_MODEL,
        on_delete=models.CASCADE,
    )
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.content

