import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = const Color.fromARGB(255, 22, 22, 22);
  final AppBar appBar;

  /// you can add more fields that meet your needs

  MyAppBar({super.key, required this.appBar});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          size: 25,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
