//Manas Navale - Vpost
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:projects/components/my_appbar.dart';



class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              flexibleSpace: const SearchBar(
                leading: Icon(Icons.search, size: 20),
                hintText: 'Search',
                constraints: BoxConstraints(minHeight: 40, maxHeight: 40),
              ),
          ),
          body: const Center(
            child: Text("Home Page"),
          ),
        );
  }
}
