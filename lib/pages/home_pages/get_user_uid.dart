import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserUid extends StatelessWidget {
  final String documentID;

  const GetUserUid({required this.documentID});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance
        .collection('userposts')
        .doc('postinfo')
        .collection('posts');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentID).get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text(data['uid'].toString());
        }
        return Text('loading...', style: TextStyle(color: Colors.blue.shade600),);
      },
    );
  }
}
