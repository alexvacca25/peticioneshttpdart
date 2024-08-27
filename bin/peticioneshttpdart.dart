
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'post.dart';

void main() async {
  // URL de la API
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  // Realizar la petición GET
  final response = await http.get(url);

  print(response);

  // Verificar si la petición fue exitosa
  if (response.statusCode == 200) {
    // Parsear la respuesta JSON a una lista
    List<dynamic> jsonData = json.decode(response.body);

    // Crear una lista de Post
    List<Post> posts = jsonData.map((json) => Post.fromJson(json)).toList();

    // Mostrar los datos
    posts.forEach((post) {
      print('User ID: ${post.userId}');
      print('ID: ${post.id}');
      print('Title: ${post.title}');
      print('Body: ${post.body}');
      print('---');
    });
  } else {
    // Manejo de errores
    print('Error al obtener los datos: ${response.statusCode}');
  }
}
