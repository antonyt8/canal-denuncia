from django.contrib import admin
from .models import Denuncia

@admin.register(Denuncia)
class DenunciaAdmin(admin.ModelAdmin):
    list_display = ('id', 'tipo', 'data_envio', 'status', 'localizacao', 'data_ocorrido', 'meio', 'deseja_apoio')
    search_fields = ('tipo', 'descricao', 'envolvidos', 'localizacao', 'meio', 'consequencias', 'sugestoes')
    list_filter = ('status', 'tipo', 'data_envio')
