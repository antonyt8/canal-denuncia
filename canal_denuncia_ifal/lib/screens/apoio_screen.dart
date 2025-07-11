import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ApoioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apoio e informações'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Text(
              'Você não está sozinho!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(height: 16),
            Text(
              'Se você está passando por uma situação difícil, procure o setor psicossocial do IFAL ou ligue para o CVV (188).',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.green),
              title: Text('CVV - Centro de Valorização da Vida'),
              subtitle: Text('Ligue 188 ou acesse cvv.org.br'),
              onTap: () async {
                final Uri url = Uri.parse('https://www.cvv.org.br');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  throw 'Não foi possível abrir $url';
                }
              },
            ),

            ListTile(
              leading: Icon(Icons.school, color: Colors.blue),
              title: Text('Setor Psicossocial IFAL'),
              subtitle: Text(
                'Procure a equipe de apoio do seu campus.\n'
                'Localizado no prédio do DAE.\n'
                'Segunda a Sexta-feira, das 7h às 13h.\n'
                'Contato: (82) 2126-6202\n'
                'Email: dae.psicologia.maceio@ifal.edu.br',
              ),
            ),

            ListTile(
              leading: Icon(Icons.web, color: Colors.purple),
              title: Text('Saiba mais sobre cyberbullying'),
              subtitle: Text('Acesse materiais educativos e dicas de enfrentamento.'),
              onTap: () {
                // Pode abrir um link externo ou mostrar mais informações
              },
            ),
          ],
        ),
      ),
    );
  }
} 