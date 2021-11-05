from rest_framework.viewsets import ModelViewSet, GenericViewSet
from rest_framework.mixins import ListModelMixin

from .models import Category, Course
from .serializers import CategorySerializer, CourseSerializer
from .paginations import CoursePagination

class CategoryViewSet(ListModelMixin, GenericViewSet):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer

class CourseViewSet(ListModelMixin, GenericViewSet):
    queryset = Course.objects.all()
    serializer_class = CourseSerializer
    pagination_class = CoursePagination

    def get_queryset(self):
        courses = Course.objects.filter(active=True)
        q = self.request.query_params.get('q')
        if q is not None:
            courses = Course.objects.filter(subject__contains=q)
        category_id = self.request.query_params.get('category_id')
        if category_id is not None:
            courses = Course.objects.filter(category_id=category_id)
        return courses
    



