import 'package:flutter/material.dart';
import 'package:projects/components/my_postbutton.dart';
import 'package:projects/pages/post_page/create_post.dart';

class MyPosts extends StatefulWidget {
  const MyPosts({super.key});
  @override
  State<MyPosts> createState() => _MyPostsState();
}

class _MyPostsState extends State<MyPosts> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyPostButton(onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CreatePostPage()),
              );
        }
        ),
        );
      } 
  }
