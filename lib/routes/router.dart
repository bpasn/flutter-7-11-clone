// ignore_for_file: prefer_const_constructors

import 'package:eleven_clone/screen/home/home_screen.dart';
import 'package:eleven_clone/screen/main_screen.dart';
import 'package:eleven_clone/screen/search_appbar/search_appbar.dart';
import 'package:eleven_clone/widget/custom_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouterHelper {
  static String init = "/";

  static String getInitial() => init;

  Route<dynamic> generateRoute(RouteSettings route) {
    print(route);
    switch (route.name) {
      case '/home':
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HomeScreen(),
          transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(-1, 0);
              const end = Offset.zero;
              final tween = Tween(begin: begin, end: end);
              final offsetAnimation = animation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
        );
      // MaterialPageRoute(
      // settings: route, builder: (_) => const MainScreen());
      case '/search-appbar':
        return MaterialPageRoute(
          settings: route,
          builder: (_) => const SearchAppBar(),
        );
      default:
        return MaterialPageRoute(
            settings: route,
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text("Screen dose not exit"),
                  ),
                ));
    }
  }
}
