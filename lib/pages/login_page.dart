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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //padding
              const Padding(
                padding: EdgeInsets.all(35.0),
                  child: Divider(
                ),
              ),
              //logo

              Image.asset('lib/images/vpost_logo1.png', scale: 1,),

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
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "OR",
                        style: TextStyle(color:Colors.grey[700]),
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
              
              
              //google
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 40.0,
                  ),
                child: Row(
                  children: [
                    const Expanded(
                        child: Divider(
                          //thickness: 0.5,
                          color: Color.fromARGB(0, 0, 0, 0),
                        ),
                    ),

                    Text(
                      '',
                      style: TextStyle(
                        fontFamily: 'JetBrainsMonoNerd',
                        color: Colors.blue[600],
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        ),
                    ),
              
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Continue with Google",
                        style: TextStyle(
                          color:Colors.blue[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                       const Expanded(
                              child: Divider(
                                //thickness: 0.5,
                                color: Color.fromARGB(0, 0, 0, 0),
                              ),
                          ),
                  ],
                ),
              ),



            //padding
              const Padding(
                padding: EdgeInsets.all(55.0),
                  child: Divider(
                    //thickness: 2,
                ),
              ),
              //not a member?
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Not a member?"),
                const SizedBox(width: 4),
                Text("Register now",
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
