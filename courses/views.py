from django.http import Http404
from rest_framework.viewsets import ModelViewSet, GenericViewSet
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin, UpdateModelMixin
from rest_framework.decorators import action, permission_classes
from rest_framework.response import Response
from rest_framework import status
from rest_framework.permissions import IsAdminUser
from django_filters.rest_framework import DjangoFilterBackend

from . import models
from .serializers import CategorySerializer, CommentSerializer, CourseSerializer, LessonSerializer, DetailLessonSerializer, TagSerializer
from .paginations import CoursePagination
from .filters import CourseFilter, LessonFilter


class CategoryViewSet(ListModelMixin, RetrieveModelMixin, GenericViewSet):
    queryset = models.Category.objects.all()
    serializer_class = CategorySerializer

class CourseViewSet(ListModelMixin, RetrieveModelMixin, GenericViewSet):
    queryset = models.Course.objects.all()
    serializer_class = CourseSerializer
    pagination_class = CoursePagination
    filter_backends = (DjangoFilterBackend,)
    filterset_class = CourseFilter

    #def get_queryset(self):
        #courses = Course.objects.filter(active=True)
        #q = self.request.query_params.get('q')
        #if q is not None:
            #courses = Course.objects.filter(subject__contains=q)
        #category_id = self.request.query_params.get('category_id')
        #if category_id is not None:
            #courses = Course.objects.filter(category_id=category_id)
        #return courses

    #@action(methods=['get'], detail=True, url_path='lessons')
    #def get_lessons(self, request, pk):
        #course = models.Course.objects.get(pk=pk)
        #lessons = course.lessons.all()
        #return Response(LessonSerializer(lessons, many=True).data)

class TagViewSet(ModelViewSet):
    queryset = models.Tag.objects.all()
    serializer_class = TagSerializer
    permission_classes = [IsAdminUser]

class LessonViewSet(ListModelMixin, GenericViewSet):
    serializer_class = LessonSerializer
    filter_backends = (DjangoFilterBackend,)
    filterset_class = LessonFilter

    def get_queryset(self):
        return models.Lesson.objects.filter(course_id=self.kwargs['course_pk'])
    
class DetailLessonViewSet(RetrieveModelMixin, GenericViewSet):
    queryset = models.Lesson.objects.filter(active=True)
    serializer_class = DetailLessonSerializer

    @action(methods=['patch'], detail=True, url_path='tags')
    def add_tags(self, request, pk):
        try:
            lesson = self.get_object()
        except Http404:
            return Response(status=status.HTTP_404_NOT_FOUND)
        else:
            tags = request.data.get("tags")
            if tags is not None:
                for tag in tags:
                    t, _ = models.Tag.objects.get_or_create(name=tag)
                    lesson.tags.add(t)
                lesson.save()
                return Response(self.serializer_class(lesson).data, status=status.HTTP_201_CREATED)
    
    @action(methods=['post'], detail=True, url_path='add-comment')
    def add_comment(self, request, pk):
        content = request.data.get('content')
        if content:
            comment = models.Comment.objects.create(
                content=content,
                lesson=self.get_object(),
                creator=self.request.user
            )
            return Response(CommentSerializer(comment).data, status=status.HTTP_201_CREATED)
        return Response(status=status.HTTP_400_BAD_REQUEST)
    

