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
        child: IconButton(
          padding: EdgeInsets.zero,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onPressed: onPressed,
          icon: Icon(
            Icons.add_circle_rounded,
            color: Colors.blue[600],
            size: 60,
          ),
        ),
      ),
    );
  }
}
