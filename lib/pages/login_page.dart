import 'package:flutter/material.dart';
import 'package:projects/components/my_button.dart';
import 'package:projects/components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //logo
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 10.0,
                ),
                child: Icon(
                  Icons.lock,
                  size: 100,
                ),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Colors.blue[600], fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25.0),
              //sign in
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),
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
