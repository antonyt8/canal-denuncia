from django.db import models
import uuid
from encrypted_model_fields.fields import EncryptedTextField

class Denuncia(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    descricao = EncryptedTextField()
    tipo = models.CharField(max_length=100)
    envolvidos = EncryptedTextField(blank=True, null=True)
    data_envio = models.DateTimeField(auto_now_add=True)
    status = models.CharField(max_length=30, default='novo')
    codigo_acomp = models.CharField(max_length=12, blank=True, null=True)
    localizacao = EncryptedTextField(blank=True, null=True)
    data_ocorrido = models.DateField(blank=True, null=True)
    meio = models.CharField(max_length=100, blank=True, null=True)
    consequencias = EncryptedTextField(blank=True, null=True)
    sugestoes = EncryptedTextField(blank=True, null=True)
    deseja_apoio = models.BooleanField(default=False)

    def __str__(self):
        return f"Denúncia {self.id} - {self.tipo}"
