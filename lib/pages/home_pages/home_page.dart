//Manas Navale - Vpost
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projects/components/home_components.dart/my_searchbar.dart';
//import 'package:projects/pages/home_pages/post_tile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  void updateList(String value) {
    //filters list
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MySearchBar(),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemBuilder:(context, index) {
  
              }),
          ),
        ],
      ),
    );
  }
}
