import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetPostDescription extends StatelessWidget {
  final String documentId;

  const GetPostDescription(this.documentId, {super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('userposts').doc('postinfo').collection('posts');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return Text(" ${data['descriptionlink']}");
        }
        return const Text("loading");
      },
    );
  }
}