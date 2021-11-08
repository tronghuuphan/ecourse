from django.db import models
from django.db.models import fields
from django_filters import rest_framework as filters
from . import models

class CourseFilter(filters.FilterSet):
    q = filters.CharFilter(field_name='subject', lookup_expr='icontains')
    class Meta:
        model = models.Course
        fields = [
            'q',
            'category',
        ]

class LessonFilter(filters.FilterSet):
    q = filters.CharFilter(field_name='subject', lookup_expr='icontains')
    class Meta:
        model = models.Lesson
        fields = [
            'q',
            'tags'
        ]