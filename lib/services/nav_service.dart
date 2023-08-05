//Manas Navale - Vpost
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projects/pages/user_pages/post_page.dart';
import '../pages/user_pages/account_page.dart';
import '../pages/user_pages/home_page.dart';

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
    HomePage(),
    const PostPage(),
    
    const AccountPage(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //resizeToAvoidBottomInset: false,
       appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: BackButton(
          onPressed: signUserOut,
        ),
      ),
        
        body: _pages[_selectedIndex],
        bottomNavigationBar: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            color: Colors.grey.shade900,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10.0,
              ),
              child: GNav(
                  onTabChange: _navigateBottomBar,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  color: Colors.white,
                  activeColor: Colors.white,
                  tabBackgroundColor: Theme.of(context).colorScheme.secondary,
                  gap: 8,
                  padding: const EdgeInsets.all(10.0),
                  tabs: const [
                    GButton(
                      icon: Icons.home,
                      text: "Home",
                    ),
                    GButton(
                      icon: Icons.post_add_rounded,
                      text: "Posts",
                    ),
                    GButton(
                      icon: Icons.account_circle_rounded,
                      text: "Account",
                    ),
                  ]),
            ),
          ),
        ));
  }
}
