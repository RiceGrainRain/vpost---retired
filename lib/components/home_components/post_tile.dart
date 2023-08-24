import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  final snap;
  const PostTile({super.key, required this.snap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          //title
            Text(
              snap['displayName']
            ),
          //image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(snap['imageUrl'])
              ),
          //descrip

          //links
        ],
      ),
    );
  }
}
