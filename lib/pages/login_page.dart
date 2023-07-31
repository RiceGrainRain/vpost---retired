import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projects/components/my_button.dart';
import 'package:projects/components/my_text_field.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() async {
    //loading screen
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    //try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      //pop the loading screen
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the loading screen
      Navigator.pop(context);
      //wrong email
      if (e.code == 'user-not-found') {
        wrongEmailMessage();
      }

      //wrong password
      else if (e.code == "wrong-password") {
        wrongPasswordMessage();
      }
    }


  }

  //wrong email popup
  void wrongEmailMessage(){
    showDialog(
      context: context,
      builder: (context){
        return const AlertDialog(
          title: Text("Invalid Email"),
        );
      },
    );
  }

    //wrong email popup
  void wrongPasswordMessage(){
    showDialog(
      context: context,
      builder: (context){
        return const AlertDialog(
          title: Text("Incorrect Password"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  //padding
                  const Padding(
                    padding: EdgeInsets.all(35.0),
                    child: Divider(
                      color: Color.fromARGB(0, 0, 0, 0),
                    ),
                  ),
                  //logo

                  //const MyLogo(),

                  const SizedBox(height: 50),

                  //email
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
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
                              color: Colors.blue[600],
                              fontWeight: FontWeight.bold),
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
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
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
                    child: Divider(
                      color: Color.fromARGB(0, 0, 0, 0),
                      //thickness: 2,
                    ),
                  ),

                  //google

                  SignInButton(
                    Buttons.google,
                    onPressed: () {},
                  ),

                  const Padding(
                    padding: EdgeInsets.all(100.0),
                    child: Divider(
                      color: Color.fromARGB(0, 0, 0, 0),
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
              )),
        ),
      ),
    );
  }
}
