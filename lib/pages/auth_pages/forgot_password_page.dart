// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projects/components/my_text_field.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
              backgroundColor: Colors.black,
              content: const Text('Password reset link sent! Please Check your email!', style: TextStyle(fontSize: 16, color: Colors.white)),
            );
          },
        );
    } on FirebaseAuthException catch (e) {
      showErrorMessage(e.message.toString());
    }
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          backgroundColor: const Color.fromARGB(255, 251, 46, 62),
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Enter your email and we\'ll send you a reset link!',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          MyTextField(
              controller: _emailController,
              hintText: "Email",
              obscureText: false),
          const SizedBox(height: 10),
          MaterialButton(
              onPressed: passwordReset,
              color: Colors.black,
              child: const Text(
                "Reset Password",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
