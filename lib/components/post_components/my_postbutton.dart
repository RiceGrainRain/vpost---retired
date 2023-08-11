import 'package:flutter/material.dart';

class MyPostButton extends StatelessWidget {
  final Function()? onPressed;

  const MyPostButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 71, 209, 142),
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: onPressed,
          child: const Icon(Icons.add),
          ),
      ),
    );
  }
}
