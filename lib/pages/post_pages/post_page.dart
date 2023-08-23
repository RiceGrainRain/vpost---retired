import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/pages/post_pages/saved_posts.dart';
import 'my_posts.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {


  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 22, 22, 22),
              bottom: const TabBar(tabs: [
                Tab(icon: Icon(CupertinoIcons.plus_square)),
                Tab(icon: Icon(CupertinoIcons.square_favorites_alt)),
              ]),
            ),
          ),
          body: const TabBarView(children: [
            MyPosts(),
            SavedPosts(),
          ],)
        ),
      );
}
