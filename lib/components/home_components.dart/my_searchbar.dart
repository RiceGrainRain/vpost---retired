import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 22, 22, 22),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none),
                  hintText: "Find some opportunities",
                  prefixIcon: Icon(CupertinoIcons.search, color: Color.fromARGB(255, 71, 209, 142)),
                  hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                  labelStyle: TextStyle(
                      color:  Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                        ),  
                  ),
            ),
          );
  }
}