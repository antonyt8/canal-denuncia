import 'package:http/http.dart' as http;
import 'dart:convert';

class DenunciaService {
  static Future<bool> enviarDenuncia({
    required String descricao,
    required String tipo,
    String envolvidos = '',
  }) async {
    final url = Uri.parse('http://localhost:8000/api/denuncias/');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'descricao': descricao,
        'tipo': tipo,
        'envolvidos': envolvidos,
      }),
    );
    return response.statusCode == 201;
  }
} 