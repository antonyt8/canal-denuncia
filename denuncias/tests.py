from django.test import TestCase
from rest_framework.test import APITestCase
from django.urls import reverse
from rest_framework import status

# Create your tests here.

class DenunciaAPITestCase(APITestCase):
    def test_criar_denuncia_anonima(self):
        url = reverse('denuncia-list')
        data = {
            'descricao': 'Teste de denúncia via API',
            'tipo': 'ameaça',
            'envolvidos': 'aluno x'
        }
        response = self.client.post(url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertEqual(response.data['descricao'], data['descricao'])
