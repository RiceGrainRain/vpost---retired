import 'package:flutter/material.dart';
import 'package:projects/components/my_button.dart';
import 'package:projects/components/my_logo.dart';
import 'package:projects/components/my_text_field.dart';
import 'package:sign_in_button/sign_in_button.dart';

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //padding
              const Padding(
                padding: EdgeInsets.all(35.0),
                child: Divider(color: Color.fromARGB(0, 0, 0, 0),),
              ),
              //logo

              const MyLogo(),

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
                          color: Colors.blue[600], fontWeight: FontWeight.bold),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, ),
                      child: Text(
                        "OR",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),


            //padding
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Divider(color: Color.fromARGB(0, 0, 0, 0),),
              ),

              //google
              SignInButton(
                Buttons.google,
                onPressed: (){},
              ),



              //padding
              const Padding(
                padding: EdgeInsets.all(100.0),
                child: Divider(color: Color.fromARGB(0, 0, 0, 0),
                    //thickness: 2,
                    ),
              ),
              //not a member?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member?"),
                  const SizedBox(width: 4),
                  Text(
                    "Register now",
                    style: TextStyle(
                      color: Colors.blue[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
