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
        cursorColor: Colors.grey.shade600,
        style: const TextStyle(color: Colors.black),
        textAlign: TextAlign.left,
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black87,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue.shade600,
              width: 2.0,
              ),
            borderRadius: BorderRadius.circular(15.0),
            
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          labelText: labelText,
          floatingLabelStyle: TextStyle(color: Colors.blue[600], fontWeight: FontWeight.bold),
          labelStyle: const TextStyle(
            color:  Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
            ),
        ),
      ),
    );
  }
}
