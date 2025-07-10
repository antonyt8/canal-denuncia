from django.contrib import admin
from .models import Denuncia

@admin.register(Denuncia)
class DenunciaAdmin(admin.ModelAdmin):
    list_display = ('id', 'tipo', 'data_envio', 'status')
    search_fields = ('tipo', 'descricao', 'envolvidos')
    list_filter = ('status', 'tipo', 'data_envio')
