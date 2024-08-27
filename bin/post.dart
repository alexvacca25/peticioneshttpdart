class Post {
  int userId;
  int id;
  String title;
  String body;

  Post({required this.userId, required this.id, required this.title, required this.body});

  // Método para crear una instancia de Post a partir de un JSON
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
