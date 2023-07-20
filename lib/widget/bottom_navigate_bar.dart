// ignore_for_file: unrelated_type_equality_checks
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:eleven_clone/constance/dimention.dart';
import 'package:eleven_clone/constance/global_constance.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBottomNavigator extends StatefulWidget {
  Function(int index)? onTap;
  int page;
  CustomBottomNavigator({super.key, required this.onTap, required this.page});

  @override
  State<CustomBottomNavigator> createState() => _CustomBottomNavigatorState();
}

class _CustomBottomNavigatorState extends State<CustomBottomNavigator> {
  
  List<TabItem> items = [
    const TabItem(
      icon: EvaIcons.home,
      title: 'Home',
    ),
    const TabItem(
      icon: Icons.credit_card,
      title: 'Vouchers',
    ),
    const TabItem(
      icon: Icons.qr_code_outlined,
      title: 'Payment/Top up',
    ),
    const TabItem(
      icon: Icons.notifications_none,
      title: 'Notifications',
    ),
    const TabItem(
      icon: Icons.card_membership,
      title: 'Member',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomBarCreative(
      items: items,
      // Floating style
      highlightStyle: HighlightStyle(
        sizeLarge:true,
        background: widget.page == 2
            ? GlobalVariable.selectedNavBarColor
            : GlobalVariable.iconScannerBG,
        color: widget.page == 2
            ? GlobalVariable.backgroundColor
            : GlobalVariable.iconScanner,
      ),
      
      visitHighlight: 2, //Position Icon Floating
      backgroundColor: GlobalVariable.backgroundColor,
      color: GlobalVariable.unselectedNavBarColor,
      colorSelected: GlobalVariable.selectedNavBarColor,
      indexSelected: widget.page,
      isFloating: true,
      
      titleStyle: TextStyle(
        letterSpacing: 1,
        fontWeight: FontWeight.bold,
        fontSize: Dimensions.font12,
        fontFamily: 'Sukumvit'
      ),
      iconSize: Dimensions.font26,
      onTap: widget.onTap,
    );
  }
}
