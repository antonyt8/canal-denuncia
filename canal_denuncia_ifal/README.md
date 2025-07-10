# canal_denuncia_ifal (Frontend Flutter)

Aplicativo moderno, acolhedor e multiplataforma para denúncias anônimas e apoio psicossocial no IFAL.

## Como rodar

```bash
flutter pub get
flutter run -d chrome  # ou -d linux/android/ios
```

- Altere o endpoint da API em `lib/services/denuncia_service.dart` para o IP do backend se necessário.

## Estrutura
- `lib/screens/` — Telas principais (Home, Denúncia, Sucesso, Apoio)
- `lib/widgets/` — Componentes reutilizáveis
- `lib/services/` — Integração com API Django
- `lib/theme/` — Temas e cores

## Personalização
- Adicione o logo do IFAL em `assets/images/logo_ifal.png`
- Edite textos, cores e ícones conforme a identidade do IFAL

## Produção
- Para build web: `flutter build web`
- Para build Android/iOS: `flutter build apk` / `flutter build ios`

---

## Licença
MIT
