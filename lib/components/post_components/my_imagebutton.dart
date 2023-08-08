import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyImageButton extends StatelessWidget {
  final Function()? onPressed;

  const MyImageButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: IconButton(
          padding: EdgeInsets.zero,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onPressed: onPressed,
          icon: Icon(
            FontAwesomeIcons.images,
            color: Colors.blue.shade600,
            size: 25,
          ),
        ),
      ),
    );
  }
}
