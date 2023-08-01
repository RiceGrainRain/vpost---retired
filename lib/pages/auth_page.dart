//Manas Navale - Vpost
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projects/pages/home_page.dart';
import 'package:projects/pages/login_or_register_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //logged in
          if (snapshot.hasData) {
            return HomePage();
          }

          //NOT logged in
          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
