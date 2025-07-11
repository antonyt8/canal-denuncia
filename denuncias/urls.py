from rest_framework.routers import DefaultRouter
from .views import DenunciaViewSet

router = DefaultRouter()
router.register(r'denuncias', DenunciaViewSet, basename='denuncia')
 
urlpatterns = router.urls 