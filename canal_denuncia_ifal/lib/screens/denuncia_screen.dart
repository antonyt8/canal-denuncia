import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';
import '../services/denuncia_service.dart';
import 'sucesso_screen.dart';

class DenunciaScreen extends StatefulWidget {
  @override
  State<DenunciaScreen> createState() => _DenunciaScreenState();
}

class _DenunciaScreenState extends State<DenunciaScreen> {
  final _formKey = GlobalKey<FormState>();
  String descricao = '';
  String tipo = '';
  String envolvidos = '';
  bool enviando = false;
  String? mensagem;

  Future<void> enviarDenuncia() async {
    setState(() {
      enviando = true;
      mensagem = null;
    });
    final sucesso = await DenunciaService.enviarDenuncia(
      descricao: descricao,
      tipo: tipo,
      envolvidos: envolvidos,
    );
    setState(() {
      enviando = false;
      if (sucesso) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SucessoScreen()),
        );
      } else {
        mensagem = 'Erro ao enviar denúncia. Tente novamente.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Denúncia'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Preencha os campos abaixo. Não é necessário se identificar.',
                style: TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              CustomTextField(
                label: 'Descrição da denúncia',
                minLines: 3,
                maxLines: 5,
                validator: (value) => value == null || value.isEmpty ? 'Descreva o ocorrido.' : null,
                onSaved: (value) => descricao = value ?? '',
              ),
              SizedBox(height: 16),
              CustomTextField(
                label: 'Tipo de cyberbullying',
                validator: (value) => value == null || value.isEmpty ? 'Informe o tipo.' : null,
                onSaved: (value) => tipo = value ?? '',
              ),
              SizedBox(height: 16),
              CustomTextField(
                label: 'Envolvidos (opcional)',
                onSaved: (value) => envolvidos = value ?? '',
              ),
              SizedBox(height: 24),
              if (mensagem != null)
                Text(
                  mensagem!,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              SizedBox(height: 16),
              CustomButton(
                text: enviando ? 'Enviando...' : 'Enviar denúncia',
                icon: Icons.send_rounded,
                onPressed: enviando
                    ? null
                    : () {
                        if (_formKey.currentState?.validate() ?? false) {
                          _formKey.currentState?.save();
                          enviarDenuncia();
                        }
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }
} 