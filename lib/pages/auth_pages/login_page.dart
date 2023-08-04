//Manas Navale - Vpost
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projects/components/my_button.dart';
import 'package:projects/components/my_text_field.dart';
import 'package:projects/pages/auth_pages/forgot_password_page.dart';
import 'package:projects/services/auth_service.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

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
      showErrorMessage(e.message.toString());
    }
  }

  //wrong email popup
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
              style: const TextStyle(
                  color: Colors.white, fontSize: 16),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  //logo
                  Image.asset(
                    'lib/images/vpost-for-darkmode.png',
                    height: 200,
                    width: 200,
                  ),

                  //email
                  MyTextField(
                    controller: emailController,
                    labelText: 'Email',
                    obscureText: false,
                  ),

                  //password
                  MyTextField(
                    controller: passwordController,
                    labelText: 'Password',
                    obscureText: true,
                  ),

                  //forgot password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const ForgotPasswordPage();
                            }));
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.blue[600],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25.0),
                  //sign in
                  MyButton(
                    text: "Sign In",
                    onTap: signUserIn,
                  ),

                  const SizedBox(height: 25),

                  //continue with
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      children: [
                         Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Text(
                            "OR",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //padding

                const SizedBox(height: 25,),

                  //google

                  SignInButton(
                    Buttons.googleDark,
                    onPressed: () => AuthService().signInWithGoogle(),
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
                      const Text("Not a member?", style: TextStyle(color: Colors.white)),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          "Register now",
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
