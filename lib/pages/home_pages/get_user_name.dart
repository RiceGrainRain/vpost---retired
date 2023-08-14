import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget {
  final String currentuserUid;
  const GetUserName({super.key, required this.currentuserUid});



  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance
        .collection('userposts')
        .doc('userinfo')
        .collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(currentuserUid).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text("Posted by ${data['first name']} ${data['last name']}");
        }
        return Text("loading", style: TextStyle(color: Colors.blue.shade600));
      },
    );
  }
}
