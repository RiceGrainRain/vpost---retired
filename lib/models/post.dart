class Post {
  final String title;
  final String description;
  final String infoLink;
  final String gcLink;

  Post({
    required this.title,
    required this.description, 
    required this.infoLink, 
    required this.gcLink});

  Map<String, dynamic> toJson() => {
     'title': title,
      'description': description,
      'infolink': infoLink,
      'gclink': gcLink,
  };
}
