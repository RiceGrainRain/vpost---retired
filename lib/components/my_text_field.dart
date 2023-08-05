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
            borderSide: BorderSide(
              color: Colors.grey.shade800,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          fillColor: Theme.of(context).colorScheme.primary,
          filled: true,
          labelText: labelText,
          floatingLabelStyle: const TextStyle(color: Colors.white),
          labelStyle:TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 14.0,
            ),
        ),
      ),
    );
  }
}
