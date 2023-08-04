//Manas Navale - Vpost
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String labelText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 5.0,
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        textAlign: TextAlign.left,
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 30, 136, 229),
              width: 2,
              ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          fillColor: Colors.grey.shade900,
          filled: true,
          labelText: labelText,
          floatingLabelStyle: TextStyle(color: Colors.blue[600]),
          labelStyle:TextStyle(
            color: Colors.grey.shade400,
            fontSize: 14.0,
            ),
        ),
      ),
    );
  }
}
