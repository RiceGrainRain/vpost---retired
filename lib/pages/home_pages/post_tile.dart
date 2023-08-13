import 'package:flutter/material.dart';
import 'package:projects/models/post.dart';


// ignore: must_be_immutable
class PostTile extends StatelessWidget {
  Post post;
  PostTile({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          
        ],
      ),
    );
  }
}
