import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 22, 22, 22),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none),
                  hintText: "Find some opportunities",
                  prefixIcon: Icon(CupertinoIcons.search, color: Colors.blue.shade600),
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 15),
                  labelStyle: const TextStyle(
                      color:  Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                        ),  
                  ),
            ),
          );
  }
}