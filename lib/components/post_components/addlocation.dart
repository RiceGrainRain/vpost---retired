//Manas Navale - Vpost
import 'package:flutter/material.dart';

class AddLocation extends StatelessWidget {
  const AddLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 164,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[600]
          ),
        icon: const Icon(Icons.location_pin, color: Colors.white),
        label: const Text("Add Location", style: TextStyle(color: Colors.white),),
        onPressed: () {},
      ),
    );
  }
}
