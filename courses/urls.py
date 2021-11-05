from rest_framework import routers

from .views import CategoryViewSet, CourseViewSet

router = routers.DefaultRouter()
router.register('categories', viewset=CategoryViewSet, basename='category')
router.register('courses', viewset=CourseViewSet, basename='course')

urlpatterns = router.urls