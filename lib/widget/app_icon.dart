
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppIcon extends StatelessWidget {
  IconData icon;
  Color? backgroundColor;
  // Color? iconColor;
  double? size;

  double? iconSize;

  AppIcon(
      {super.key, required this.icon,
      this.iconSize = 16,
      this.backgroundColor = const Color(0xFFfcf4e4),
      // this.iconColor = const Color(0xFF756d54),
      this.size = 40});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size,
        height: size,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(size! / 2),
          // color: GlobalVariable.greyBackgroundCOlor,
        // ),
        child: Icon(icon, size: iconSize));
  }
}
