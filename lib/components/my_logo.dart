import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({super.key});

 @override
 Widget build(BuildContext context) {
   return SvgPicture.asset(
      'images/vpost-only.svg',
     semanticsLabel: 'My SVG Image',
   );
 }
}
