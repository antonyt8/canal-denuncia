from rest_framework import serializers
from .models import Denuncia

class DenunciaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Denuncia
        fields = '__all__'
        extra_kwargs = {
            'descricao': {'error_messages': {'required': 'A descrição da denúncia é obrigatória.'}},
            'tipo': {'error_messages': {'required': 'O tipo de cyberbullying é obrigatório.'}},
            'localizacao': {'required': False},
            'data_ocorrido': {'required': False},
            'meio': {'required': False},
            'consequencias': {'required': False},
            'sugestoes': {'required': False},
            'deseja_apoio': {'required': False},
        } 