//Manas Navale - Vpost
//import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:projects/components/my_appbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  void updateList(String value) {
    //filters list
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 22, 22, 22),
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none),
                hintText: "Find some opportunities",
                prefixIcon: Icon(CupertinoIcons.search, color: Colors.blue.shade600),
                hintStyle: const TextStyle(color: Colors.white, fontSize: 15),
                labelStyle: const TextStyle(
                    color:  Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                      ),  
                ),
          ),
        ),
        const SizedBox(height: 20),
        Expanded(child: ListView(),)
      ],
    ),
    );
  }
}
