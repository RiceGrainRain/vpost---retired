//Manas Navale - Vpost
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projects/pages/about_page.dart';
import '../pages/bookmarks.dart';
import '../pages/search_page.dart';
import '../pages/settings_page.dart';
import '../pages/home_page.dart';

class NavHome extends StatefulWidget {
  final Function()? onTap;
  const NavHome({super.key, required this.onTap});
  

  @override
  State<NavHome> createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const BookmarkPage(),
    const SettingsPage(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                splashRadius: 20,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 20.0,
                ))),
      ),
      drawer: Drawer(
          backgroundColor: Colors.grey.shade900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                      child: Image.asset(
                      'lib/images/vpost-dark.png',
                      height: 100,
                      width: 100,
                      ),
                    ),
                    ),
                
                 Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    onTap:() => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const AboutPage())),
                    leading: const Icon(Icons.info, color: Colors.white),
                    title: const Text("About", style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                 Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    onTap:() => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const AboutPage())),
                    leading: const Icon(Icons.settings_rounded, color: Colors.white),
                    title: const Text("Settings", style: TextStyle(color: Colors.white)),
                  ),
                ),

    
                
                 Padding(
                  padding: const EdgeInsets.only(left: 25.0, bottom: 25),
                  child: ListTile(
                    onTap: signUserOut,
                    leading: const Icon(Icons.logout_rounded, color: Color.fromARGB(255, 251, 46, 62)),
                    title: const Text("Log Out", style: TextStyle(color: Color.fromARGB(255, 251, 46, 62), fontWeight: FontWeight.bold, fontSize: 14.5,)),
                  ),
                ),
                ],
              ),
              ],
          ),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: SingleChildScrollView(
          child: Container(
            color: Colors.grey.shade900,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10.0,
              ),
              child: GNav(
                  onTabChange: _navigateBottomBar,
                  backgroundColor: Colors.grey.shade900,
                  color: Colors.white,
                  activeColor: Colors.white,
                  tabBackgroundColor: Colors.grey.shade800,
                  gap: 8,
                  padding: const EdgeInsets.all(10.0),
                  tabs: const [
                    GButton(
                      icon: Icons.home,
                      text: "Home",
                    ),
                    GButton(
                      icon: Icons.search,
                      text: "Search",
                    ),
                    GButton(
                      icon: Icons.bookmark,
                      text: "Bookmarks",
                    ),
                    GButton(
                      icon: Icons.post_add_rounded,
                      text: "Post",
                    ),
                  ]),
            ),
          ),
        ));
  }
}
