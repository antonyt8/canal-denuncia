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
    final url = Uri.parse('http://localhost:8000/api/denuncias/');
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
    return response.statusCode == 201;
  }
} 