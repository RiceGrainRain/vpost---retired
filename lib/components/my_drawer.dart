import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  child: Image.asset(
                    'lib/images/vpost-for-darkmode.png',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: ListTile(
                  leading: const Icon(CupertinoIcons.person_circle),
                  title: const Text("Account"),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: ListTile(
                  leading: const Icon(CupertinoIcons.info_circle),
                  title: const Text("Info"),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: ListTile(
                  leading: const Icon(CupertinoIcons.bell_circle),
                  title: const Text("Notifications"),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: ListTile(
                  leading: const Icon(CupertinoIcons.exclamationmark_circle),
                  title: const Text("Report"),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: ListTile(
                  leading: const Icon(CupertinoIcons.arrow_up_circle),
                  title: const Text("Request"),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: ListTile(
                  leading: const Icon(CupertinoIcons.chevron_left_square_fill,
                      color: Color.fromARGB(255, 251, 46, 62)),
                  title: const Text("Sign Out",
                      style: TextStyle(color: Color.fromARGB(255, 251, 46, 62))),
                  onTap: () {
                    signUserOut();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
