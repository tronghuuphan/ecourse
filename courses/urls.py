from rest_framework import routers
from rest_framework_nested import routers

from .views import CategoryViewSet, CourseViewSet, LessonViewSet, DetailLessonViewSet 

router = routers.DefaultRouter()
router.register('categories', viewset=CategoryViewSet, basename='category')
router.register('courses', viewset=CourseViewSet, basename='course')
router.register('lessons', viewset=DetailLessonViewSet, basename='lesson')

courses = routers.NestedDefaultRouter(
    parent_router = router,
    parent_prefix = 'courses',
    lookup='course'
)
courses.register(
    prefix='lessons', 
    viewset=LessonViewSet,
    basename='course-lessons'
)

urlpatterns = router.urls + courses.urls