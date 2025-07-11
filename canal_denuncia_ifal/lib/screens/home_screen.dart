import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'denuncia_screen.dart';
import 'apoio_screen.dart';
import '../theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  void _abrirDenuncia(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DenunciaScreen()),
    );
  }

  void _abrirApoio(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ApoioScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.azulCeuClaro,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Exemplo de ilustração humanizada (adicione um asset se desejar)
              // Image.asset('assets/images/abraco.png', height: 120, semanticLabel: 'Ilustração de acolhimento'),
              Icon(Icons.favorite_rounded, size: 80, color: AppColors.lilasSuave),
              SizedBox(height: 24),
              Text(
                'Abraço Digital',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.azulProfundo),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                'Sua voz importa. Estamos aqui para acolher, ouvir e agir.',
                style: TextStyle(fontSize: 18, color: AppColors.azulProfundo),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              Card(
                color: AppColors.rosaClaro,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '💬 “Você não está sozinho(a).”',
                    style: TextStyle(fontSize: 16, color: AppColors.azulProfundo, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Card(
                color: AppColors.verdeSalvia,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '🔒 Sua denúncia é sigilosa e segura.',
                    style: TextStyle(fontSize: 16, color: AppColors.azulProfundo),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 32),
              CustomButton(
                icon: Icons.report_gmailerrorred_rounded,
                text: 'Fazer uma denúncia',
                onPressed: () => _abrirDenuncia(context),
              ),
              SizedBox(height: 16),
              CustomButton(
                icon: Icons.volunteer_activism_rounded,
                text: 'Apoio e informações',
                outlined: true,
                onPressed: () => _abrirApoio(context),
              ),
              SizedBox(height: 24),
              // Selo de anonimato
              Chip(
                label: Text('Denúncia 100% anônima', style: TextStyle(color: Colors.white)),
                backgroundColor: AppColors.azulProfundo,
                avatar: Icon(Icons.visibility_off, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.rosaClaro,
        child: Icon(Icons.exit_to_app, color: AppColors.azulProfundo),
        tooltip: 'Botão de pânico: sair rapidamente',
        onPressed: () {
          // Redireciona para Google ou fecha o app
          // Exemplo: launchUrl(Uri.parse('https://www.google.com'));
        },
      ),
    );
  }
} 