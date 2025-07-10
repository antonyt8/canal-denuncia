# canal-denuncia

Sistema de Denúncia Anônima e Suporte Psicossocial para Casos de Cyberbullying no IFAL

Este repositório contém o backend (Django + DRF + PostgreSQL) e o frontend (Flutter Web/Mobile) para um canal seguro, anônimo e acolhedor de denúncias e apoio psicossocial.

## Estrutura do Projeto

- `ifal_denuncia/` — Backend Django (API REST, PostgreSQL, criptografia, admin)
- `canal_denuncia_ifal/` — Frontend Flutter (web, Android, iOS)

## Tecnologias
- **Backend:** Python, Django, Django REST Framework, PostgreSQL, django-encrypted-model-fields, django-cors-headers
- **Frontend:** Flutter, Dart, Google Fonts, HTTP

## Como rodar o backend (Django)

```bash
cd ifal_denuncia
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt  # gere um requirements.txt com pip freeze > requirements.txt
python manage.py migrate
python manage.py runserver 0.0.0.0:8000
```

- Acesse o admin em http://localhost:8000/admin/
- Acesse a API em http://localhost:8000/api/denuncias/
- Documentação Swagger: http://localhost:8000/swagger/

## Como rodar o frontend (Flutter)

```bash
cd canal_denuncia_ifal
flutter pub get
flutter run -d chrome  # ou -d linux/android/ios
```

- Altere o endpoint da API em `lib/services/denuncia_service.dart` para o IP do backend se necessário.

## Observações importantes
- **NÃO suba chaves secretas, senhas ou FIELD_ENCRYPTION_KEY no GitHub!**
- Configure variáveis sensíveis via variáveis de ambiente.
- Para evitar subir submódulos, sempre crie o repositório na raiz do projeto e adicione as pastas normalmente.

---

## Licença
MIT 