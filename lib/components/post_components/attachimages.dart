//Manas Navale - Vpost
import 'package:flutter/material.dart';

class AttachImages extends StatelessWidget {
  const AttachImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 164,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black
          ),
        icon: const Icon(Icons.image, color: Colors.white),
        label: const Text("Attach Images", style: TextStyle(color: Colors.white),),
        onPressed: () {},
      ),
    );
  }
}
