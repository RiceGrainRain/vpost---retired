import 'package:flutter/material.dart';

class MyPostTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final int maxLines;

  const MyPostTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade900,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        fillColor: Colors.grey.shade800,
        filled: true,
        floatingLabelStyle: const TextStyle(color: Colors.white),
        labelStyle: TextStyle(
          color: Colors.grey.shade200,
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
