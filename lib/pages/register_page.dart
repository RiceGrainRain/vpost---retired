import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projects/components/my_button.dart';
import 'package:projects/components/my_text_field.dart';
import 'package:sign_in_button/sign_in_button.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //sign user up method
  void signUserUp() async {
    //loading screen
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    //try creating user
    try {
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      } else {
        showErrorMessage("Passwords dont't match!");
      }
      //pop the loading screen
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the loading screen
      Navigator.pop(context);
      //wrong email
      showErrorMessage(e.code);
    }
  }

  //wrong email popup
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          backgroundColor: const Color.fromARGB(255, 162, 0, 33),
          title: Center(
            child: Text(
              message,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
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
                  //logo
                  Image.asset(
                    'lib/images/vpost.png',
                    height: 200,
                    width: 200,
                  ),

                  //email
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                  ),

                  //password
                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  //confirm password
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 25.0),
                  //sign in
                  MyButton(
                    text: "Sign Up",
                    onTap: signUserUp,
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
                    padding: EdgeInsets.all(5.0),
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
                    padding: EdgeInsets.all(2.0),
                    child: Divider(
                      color: Color.fromARGB(0, 0, 0, 0),
                      //thickness: 2,
                    ),
                  ),

                  //not a member?

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          "Login now",
                          style: TextStyle(
                            color: Colors.blue[600],
                            fontWeight: FontWeight.bold,
                          ),
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
