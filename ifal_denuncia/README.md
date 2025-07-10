# ifal_denuncia (Backend Django)

API REST segura e criptografada para denúncias anônimas e gestão psicossocial no IFAL.

## Como rodar

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt  # gere um requirements.txt com pip freeze > requirements.txt
python manage.py migrate
python manage.py runserver 0.0.0.0:8000
```

- Admin: http://localhost:8000/admin/
- API: http://localhost:8000/api/denuncias/
- Swagger: http://localhost:8000/swagger/

## Segurança
- **NUNCA suba FIELD_ENCRYPTION_KEY, SECRET_KEY ou senhas no GitHub!**
- Use variáveis de ambiente para dados sensíveis.
- Configure CORS para aceitar apenas domínios confiáveis em produção.

## Dependências principais
- Django, djangorestframework, django-encrypted-model-fields, django-cors-headers, psycopg2-binary

---

## Licença
MIT 