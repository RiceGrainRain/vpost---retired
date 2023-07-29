import 'package:flutter/material.dart';
import 'package:projects/components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              //username
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              //password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              //forgot password
              //sign in
              //continue with
              //google + apple
              //not a member?
            ],
          ),
        ),
      ),
    );
  }
}
