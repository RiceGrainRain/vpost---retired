import 'package:flutter/material.dart';
import 'package:projects/components/post_components/addlocation.dart';
import 'package:projects/components/post_components/attachimages.dart';
import 'package:projects/components/post_components/my_linkfield.dart';
//import 'package:projects/components/post_components/my_imagebutton.dart';
import 'package:projects/components/post_components/my_postdescrip.dart';
import 'package:projects/components/post_components/my_posttitle.dart';
import 'package:projects/components/post_components/uploadpost.dart';



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
        title: const Text("Create a post", style: TextStyle(fontSize: 18),),
        backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      ),
       body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            MyPostTitle(controller: titleController, hintText: "Title"),
            MyPostDescription(controller: descriptionController, hintText: "Write a description"),
            MyLinkField(controller: infolinkController, hintText: "Add any informational links"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: MyLinkField(controller: gclinkController, hintText: "Add any groupchat links"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: AttachImages(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: AddLocation(),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: UploadPost(onTap: (){}),
            )
          ],
        ),
      ),
    );
  }
}
