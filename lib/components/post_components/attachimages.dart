//Manas Navale - Vpost
import 'package:flutter/material.dart';


class AttachImages extends StatefulWidget {
  final Function()? onPressed;
  const AttachImages({
    super.key, required this.onPressed,
  });

  @override
  State<AttachImages> createState() => _AttachImagesState();
}

class _AttachImagesState extends State<AttachImages> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 164,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        icon: const Icon(Icons.image, color: Colors.white),
        label: const Text(
          "Attach Images",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: widget.onPressed
      )
      );
        } 
}
