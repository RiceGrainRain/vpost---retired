import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetTitle extends StatelessWidget {
  final String documentId;

  GetTitle({required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference posts = FirebaseFirestore.instance.collection('posts');
    return FutureBuilder<DocumentSnapshot>(
        future: posts.doc(documentId).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Text('${data['title']}');
          }
          return Text('loading...');
        }));
  }
}
