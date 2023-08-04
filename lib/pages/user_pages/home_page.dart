//Manas Navale - Vpost
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     // resizeToAvoidBottomInset: false,
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
