import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final descriptionController = TextEditingController();
  final informationController = TextEditingController();
  final groupchatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
              child: Column(
            children: [
              //description textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  //expands: true,
                  maxLines: 9,
                  controller: descriptionController,
                  decoration: InputDecoration(
                    labelText: "Description",
                    labelStyle: const TextStyle(fontSize: 13),
                    alignLabelWithHint: true,
                    enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.grey.shade600),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade900),
                   ),  
                    fillColor: Colors.grey.shade200,
                    filled: true,
                  ),
                ),
              ),
            ],
          ),),
        ),
      ),
    );
  }
}
