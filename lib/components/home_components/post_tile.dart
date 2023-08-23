import 'package:flutter/material.dart';
import 'package:projects/models/post.dart';

// ignore: must_be_immutable
class PostTile extends StatelessWidget {
  Post post;
  PostTile({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(children: [
        //title
        Text(
          post.title,
          style: const TextStyle(color: Colors.black54, fontSize: 16)
        ),
        //Image
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image(image: NetworkImage(post.storedUrl))
        ),
        //description
        Text(
          post.description,
          style: const TextStyle(color: Colors.black54, fontSize: 13)
        ),
      ],)
    );
  }
}
