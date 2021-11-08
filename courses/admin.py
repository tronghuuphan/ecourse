from django.contrib import admin
from . import models

# Register your models here.
@admin.register(models.Category)
class CategoryAdmin(admin.ModelAdmin):
    pass

@admin.register(models.Course)
class CourseAdmin(admin.ModelAdmin):
    list_display = ['subject', 'active', 'category', 'updated_date']

@admin.register(models.Lesson)
class LessonAdmin(admin.ModelAdmin):
    pass

@admin.register(models.Tag)
class TagAdmin(admin.ModelAdmin):
    pass