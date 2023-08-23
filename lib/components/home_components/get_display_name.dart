import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetDisplayName extends StatelessWidget {
  final String documentId;

  GetDisplayName({required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference posts = FirebaseFirestore.instance.collection('posts');
    return FutureBuilder<DocumentSnapshot>(
        future: posts.doc(documentId).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Text('${data['displayName']}');
          }
          return Text('loading...');
        }));
  }
}
