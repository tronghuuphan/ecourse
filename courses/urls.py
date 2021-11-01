from rest_framework import routers

from .views import CategoryViewSet

router = routers.DefaultRouter()
router.register('categories', viewset=CategoryViewSet, basename='category')

urlpatterns = router.urls