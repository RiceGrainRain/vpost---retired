import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPostButton extends StatelessWidget {
  final Function()? onTap;

  const MyPostButton({super.key, required this.onTap});

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
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.add_circled_solid,
            color: Color.fromARGB(255,30,195,142),
            size: 60,
          ),
        ),
      ),
    );
  }
}
