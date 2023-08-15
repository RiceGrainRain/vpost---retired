//Manas Navale - Vpost
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projects/components/home_components.dart/my_searchbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String displayName = "";
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  void updateList(String value) {
    //filters list
  }

  @override
  void initState() {
    super.initState();
    getDisplayName();
  }

  void getDisplayName() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      displayName = (snap.data() as Map<String, dynamic>)['displayName'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(displayName),
        backgroundColor: Colors.black,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MySearchBar(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
