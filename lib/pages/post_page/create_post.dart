import 'package:flutter/material.dart';
import 'package:projects/components/post_components/my_imagebutton.dart';
//import 'package:projects/components/my_post_textfield.dart';


class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final infolinkController = TextEditingController();
  final gclinkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      ),
       body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                MyImageButton(onPressed:(){}),
                //MyPostTextField(controller: titleController, hintText: "Title", maxLines: 1),
              ],
            )
          ],
        ),
      ),
    );
  }
}
