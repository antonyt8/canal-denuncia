import logging
from django.shortcuts import render
from rest_framework import viewsets, permissions
from .models import Denuncia
from .serializers import DenunciaSerializer

logger = logging.getLogger(__name__)

# Create your views here.

class IsAdminOrCreateOnly(permissions.BasePermission):
    def has_permission(self, request, view):
        if view.action == 'create':
            return True  # Qualquer um pode criar denúncia
        return request.user and request.user.is_staff  # Só admin pode listar

class DenunciaViewSet(viewsets.ModelViewSet):
    queryset = Denuncia.objects.all()
    serializer_class = DenunciaSerializer
    http_method_names = ['get', 'post', 'head']
    permission_classes = [IsAdminOrCreateOnly]

    def list(self, request, *args, **kwargs):
        logger.info(f"Usuário {request.user} acessou a listagem de denúncias.")
        return super().list(request, *args, **kwargs)

    def create(self, request, *args, **kwargs):
        logger.info(f"Nova denúncia recebida de IP {request.META.get('REMOTE_ADDR')}")
        return super().create(request, *args, **kwargs)
