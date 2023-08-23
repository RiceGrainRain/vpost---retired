class Post {
  final String username;
  final String title;
  final String description;
  final String infoLink;
  final String gcLink;
  final String storedUrl;

  Post(
      {
      required this.username, 
      required this.storedUrl,
      required this.title,
      required this.description,
      required this.infoLink,
      required this.gcLink});

  Map<String, dynamic> toJson() => {
        'displayName': username,
        'title': title,
        'description': description,
        'infolink': infoLink,
        'gclink': gcLink,
        'imageUrl': storedUrl,
      };
}
