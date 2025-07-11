import 'package:http/http.dart' as http;
import 'dart:convert';

class DenunciaService {
  static Future<bool> enviarDenuncia({
    required String descricao,
    required String tipo,
    String envolvidos = '',
    String localizacao = '',
    String dataHora = '',
    String meio = '',
    String consequencias = '',
    String sugestoes = '',
    bool desejaApoio = false,
  }) async {
    final url = Uri.parse('http://10.1.66.88:8000/api/denuncias/');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'descricao': descricao,
        'tipo': tipo,
        'envolvidos': envolvidos,
        'localizacao': localizacao,
        'data_ocorrido': dataHora,
        'meio': meio,
        'consequencias': consequencias,
        'sugestoes': sugestoes,
        'deseja_apoio': desejaApoio,
      }),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      print('Erro ao enviar denúncia: ${response.statusCode}');
      print('Resposta do backend: ${response.body}');
      return false;
    }
  }
} 