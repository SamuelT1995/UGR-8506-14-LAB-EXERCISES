class PostModel {
  final int userId;
  final String title;
  final String description;
  final int id;
 
  PostModel({required this.userId, required this.title, required this.description, required this.id});

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
    userId: json['userId'],
    id: json['id'],
    title: json['title'],
    description: json['body'],
  );
}
