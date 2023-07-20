import 'package:eleven_clone/screen/home/home_screen.dart';
import 'package:eleven_clone/widget/bottom_navigate_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 0;
  double bottomBarWidtd = 0;
  double bottomBorderWidtd = 0;
  List<Widget> page = [
    const HomeScreen(),
    const Center(
      child: Text("Credit Card"),
    ),
    const Center(
      child: Text("Scan"),
    ),
    const Center(
      child: Text("Notifycation"),
    ),
    const Center(
      child: Text("Members"),
    ),
  ];
  void updatePage(int page) => setState(() => _page = page);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_page],
      bottomNavigationBar: _buildBottomBarCreative(),
    );
  }

  CustomBottomNavigator _buildBottomBarCreative() {
    return CustomBottomNavigator(onTap: updatePage, page: _page);
  }
}
