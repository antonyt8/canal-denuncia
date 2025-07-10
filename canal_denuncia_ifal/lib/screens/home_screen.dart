import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'denuncia_screen.dart';
import 'apoio_screen.dart';

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shield_rounded, size: 80, color: Theme.of(context).colorScheme.primary),
              SizedBox(height: 24),
              Text(
                'Bem-vindo ao Canal de Denúncia Anônima do IFAL',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'Aqui você pode denunciar casos de cyberbullying de forma segura, anônima e acolhedora. Seu bem-estar importa!',
                style: TextStyle(fontSize: 18, color: Colors.black54),
                textAlign: TextAlign.center,
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
            ],
          ),
        ),
      ),
    );
  }
} 