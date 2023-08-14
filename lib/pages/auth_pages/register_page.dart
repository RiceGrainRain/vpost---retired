//Manas Navale - Vpost
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/components/auth_components/my_button.dart';
import 'package:projects/components/auth_components/my_text_field.dart';


class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final user = FirebaseAuth.instance.currentUser;
  //controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final ageController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    ageController.dispose();
    super.dispose();
  }

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

    Future addUserDetails(
        String firstName, String lastName, int age, String email) async {
      await FirebaseFirestore.instance
          .collection('userposts')
          .doc('userinfo')
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .set({
        'first name': firstName,
        'last name': lastName,
        'age': age,
        'email': email,
        'uid': FirebaseAuth.instance.currentUser?.uid,
      });
    }

    //try creating user
    try {
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        //adding user details;
        addUserDetails(
          firstNameController.text.trim(),
          lastNameController.text.trim(),
          int.parse(ageController.text.trim()),
          emailController.text.trim(),
        );
      } else {
        showErrorMessage("Passwords dont't match!");
      }

      //pop the loading screen
      // ignore: use_build_context_synchronously
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
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  //logo
                  Text(
                      textAlign: TextAlign.center,
                      "Ready to volunteer?",
                      style: GoogleFonts.roboto(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 22, 22, 22),
                      )),

                  const SizedBox(height: 10),

                  const Text("Regster below with your details!",
                      style: TextStyle(color: Color.fromARGB(255, 22, 22, 22))),

                  const SizedBox(height: 10),

                  //fname
                  MyTextField(
                      controller: firstNameController,
                      labelText: 'First Name',
                      obscureText: false),

                  //lname
                  MyTextField(
                      controller: lastNameController,
                      labelText: 'Last Name',
                      obscureText: false),

                  //age
                  MyTextField(
                      controller: ageController,
                      labelText: 'Age',
                      obscureText: false),

                  //email
                  MyTextField(
                    controller: emailController,
                    labelText: 'Email',
                    obscureText: false,
                  ),

                  //password
                  MyTextField(
                    controller: confirmPasswordController,
                    labelText: 'Password',
                    obscureText: true,
                  ),

                  //confirm password
                  MyTextField(
                    controller: passwordController,
                    labelText: 'Confirm Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10.0),
                  //sign in
                  MyButton(
                    text: "Sign Up",
                    onTap: signUserUp,
                  ),
                  const SizedBox(height: 10),

                  //not a member?
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 22, 22, 22))),
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
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
