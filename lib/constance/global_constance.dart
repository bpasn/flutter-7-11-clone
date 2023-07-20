
import 'package:flutter/material.dart';

class GlobalVariable {
  static const appBarGrandient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const backgroundColor = Colors.white;
  // static const bgGreen =Color.fromRGBO(39, 201, 120, 1);
  static const primary =Color.fromRGBO(0, 128, 98, 1);
  static const secondary =Color.fromRGBO(0, 166, 80, 1);
  static const pinkColor =Color.fromRGBO(255,141,141, 1);
  static const redColor =Color.fromRGBO(240,27,45, 1);
  static const secondaryColor =Color.fromRGBO(244,130,31, 1);

  static const Color greyBackgroundCOlor = Color.fromARGB(255, 245, 246, 250);
  static var selectedNavBarColor = const Color.fromRGBO(12, 161, 87, 1);
  static var iconDelivery = Colors.green;

  static var iconScannerBG = const Color.fromRGBO(223, 223, 223, 1);
  static var iconScanner = const Color.fromRGBO(153, 154, 153, 1);
  static var iconPrimary = const Color.fromRGBO(0, 6, 176, 88);
  static const unselectedNavBarColor = Color.fromRGBO(152,152,152,1);


}

