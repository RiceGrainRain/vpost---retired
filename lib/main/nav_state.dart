import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/pages/user_pages/home_page.dart';
import 'package:projects/pages/user_pages/location_page.dart';
import 'package:projects/pages/post_page/post_page.dart';
import 'package:projects/pages/user_pages/settings_page.dart';

import '../components/nav_components/my_appbar.dart';
import '../components/nav_components/my_drawer.dart';


class NavState extends StatefulWidget {
  const NavState({Key? key}) : super(key: key);
  
  @override
  _NavStateState createState() => _NavStateState();
}
  
class _NavStateState extends State<NavState> {
  int pageIndex = 0;
  
  final pages = [
    HomePage(),
    const PostPage(),
    const LocationPage(),
    const SettingsPage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          appBar: AppBar(),
        ),
      drawer: const MyDrawer(),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 22, 22, 22),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              splashRadius: 20,
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      CupertinoIcons.house_fill,
                      color: Colors.white,
                      size: 25,
                    )
                  :  Icon(
                      CupertinoIcons.house,
                      color:Colors.grey.shade600,
                      size: 25,
                    ),
            ),
            IconButton(
              splashRadius: 20,
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      CupertinoIcons.add_circled_solid,
                      color: Colors.white,
                      size: 25,
                    )
                  : Icon(
                      CupertinoIcons.add_circled,
                      color: Colors.grey.shade600,
                      size: 25,
                    ),
            ),
            IconButton(
              splashRadius: 20,
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      CupertinoIcons.location_circle_fill,
                      color: Colors.white,
                      size: 25,
                    )
                  : Icon(
                      CupertinoIcons.location_circle,
                      color: Colors.grey.shade600,
                      size: 25,
                    ),
            ),
            IconButton(
              splashRadius: 20,
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      CupertinoIcons.settings,
                      color: Colors.white,
                      size: 25,
                    )
                  : Icon(
                      CupertinoIcons.settings_solid,
                      color: Colors.grey.shade600,
                      size: 25,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}