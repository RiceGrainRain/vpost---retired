//final commit - retiring. 
//Manas Navale - Vpost
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:projects/components/home_components/get_display_name.dart';
import 'package:projects/components/home_components/my_searchbar.dart';
import 'package:projects/components/home_components/post_tile.dart';
//import 'package:projects/components/home_components/post_tile.dart';
//import 'package:projects/models/post.dart';

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

  List<String> docIDs = [];

  Future getDocID() async {
    await FirebaseFirestore.instance.collection('posts').get().then(
          (snapshot) => snapshot.docs.forEach(
            (document) {
              print(document.reference);
              docIDs.add(document.reference.id);
            },
          ),
        );
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
            child: StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection('posts').snapshots(),
                builder: (context,
                    AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                        snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) => PostTile(
                        snap: snapshot.data!.docs[index].data
                      )
                          );
                }),
          ),
        ],
      ),
    );
  }
}
