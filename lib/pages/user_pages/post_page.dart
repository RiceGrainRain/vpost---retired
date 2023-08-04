import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final informationController = TextEditingController();
  final groupchatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                //title textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    //expands: true,
                    maxLines: 1,
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: "Title",
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

                const SizedBox(height: 20),

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


                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    //expands: true,
                    maxLines: 3,
                    controller: informationController,
                    decoration: InputDecoration(
                      labelText: "Informational Links(Please attach!)",
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

                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    //expands: true,
                    maxLines: 3,
                    controller: groupchatController,
                    decoration: InputDecoration(
                      labelText: "Insert any groupchats or group links!",
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
            ),
          ),
        ),
      ),
    );
  }
}
