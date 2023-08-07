import 'package:flutter/material.dart';
import 'package:projects/components/my_postbutton.dart';

class MyPosts extends StatefulWidget {
  const MyPosts({super.key});

  @override
  State<MyPosts> createState() => _MyPostsState();
}

class _MyPostsState extends State<MyPosts> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyPostButton(onTap: (){}),
      );
  }
}