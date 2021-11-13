from rest_framework import serializers

from . import models

class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Category
        fields = ('id', 'name',)

class CourseSerializer(serializers.ModelSerializer):
    image = serializers.SerializerMethodField()

    def get_image(self, course):
        request = self.context['request']
        name = course.image.name
        if name.startswith('static/'):
            path = '%s' %name
        else:
            path = '/static/%s' %name
        return request.build_absolute_uri(path)

    class Meta:
        model = models.Course
        fields = ('id', 'subject', 'image', 'created_date', 'category_id')

class TagSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(read_only=True)
    class Meta:
        model = models.Tag
        fields = (
            'id',
            'name',
        )

class LessonSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Lesson
        fields = [
            'id',
            'subject',
            'image',
            'course_id',
            'created_date',
            'updated_date'
        ]

class DetailLessonSerializer(LessonSerializer):
    tags = TagSerializer(many=True)
    class Meta:
        model = LessonSerializer.Meta.model
        fields = LessonSerializer.Meta.fields + ['content', 'tags']

class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Comment
        fields = ['id', 'content', 'created_date', 'updated_date', 'creator']

class ActionSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Action
        fields = ['id', 'type', 'updated_date']

class RatingSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Rating
        fields = ['id', 'rating', 'updated_date']