import 'package:flutter/material.dart';

class MyLinkField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;

  const MyLinkField(
      {super.key,
      required this.controller,
      required this.hintText,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TextField(
            maxLines: 1,
            cursorColor: Colors.grey.shade600,
            autocorrect: true,
            style: const TextStyle(color: Colors.black),
            textAlign: TextAlign.left,
            textAlignVertical: TextAlignVertical.center,
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black87),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 22, 22, 22)),
              ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          ),
        ),
      )
    );
  }
}
