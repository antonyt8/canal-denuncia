# canal-denuncia

Sistema de Denúncia Anônima e Suporte Psicossocial para Casos de Cyberbullying no IFAL

Este repositório contém o backend (Django + DRF + PostgreSQL) e o frontend (Flutter Web/Mobile) para um canal seguro, anônimo e acolhedor de denúncias e apoio psicossocial.

## Estrutura do Projeto

- `ifal_denuncia/` — Projeto principal do backend Django (configurações, URLs, WSGI, etc)
- `canal_denuncia_ifal/` — Frontend Flutter (web, Android, iOS)
- `denuncias/` — App Django responsável pela lógica de denúncias: modelos, API REST, criptografia dos dados, validações, admin, testes e rotas relacionadas às denúncias anônimas. Toda denúncia feita pelo app ou web é registrada e tratada por aqui.

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

- O formulário de denúncia agora aceita campos detalhados: localização, data do ocorrido, meio utilizado, consequências, sugestões/pedidos de apoio e opção de solicitar apoio psicossocial.
- O backend Django está preparado para receber e armazenar todos esses campos, mantendo a segurança e o anonimato.
- **NÃO suba chaves secretas, senhas ou FIELD_ENCRYPTION_KEY no GitHub!**
- Configure variáveis sensíveis via variáveis de ambiente.
- Para evitar subir submódulos, sempre crie o repositório na raiz do projeto e adicione as pastas normalmente.

---

## Licença
MIT 