import 'package:eleven_clone/constance/global_constance.dart';
import 'package:flutter/material.dart';

class MenuItem {
  Color color;
  String urlImage;
  Icon? icon;
  String? title;

  MenuItem(
      {
        this.color = Colors.white,
        required this.urlImage,
        required this.title
      }
      );
}

class MenuViewItem {
 List<MenuItem> getMenuItem() {
    return [
      MenuItem(
        color: Colors.white,
          urlImage:
              "assets/icons/icon-7online.png",
          title: "All Online"),
          
      MenuItem(
        color: Colors.white,
          urlImage:
              "assets/icons/icon-7online.png",
          title: "7 Store"),
      MenuItem(
          urlImage:
              "assets/icons/icon-promotion.png",
          title: "Promotions"),
      MenuItem(
          urlImage:
              "assets/icons/icon-product.png",
          title: "Catagory"),
      MenuItem(
          urlImage:
              "assets/icons/icon-allmember.png",
          title: "All Member"),
      MenuItem(
          urlImage:
              "assets/icons/icon-pin.png",
          title: "Find 7 Store"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
      MenuItem(
          urlImage:
              "assets/icons/avatar-bg.png",
          title: "Account"),
    ];
  }

List<MenuItem> getMenuItemAction() {
    return [
      MenuItem(
        color: Colors.white,
          urlImage:
              "assets/icons/icon-7online.png",
          title: ""),
          
      MenuItem(
        color: Colors.white,
          urlImage:
              "assets/icons/icon-7online.png",
          title: "บาร์โค้ดของฉัน"),
      MenuItem(
          urlImage:
              "assets/icons/icon-promotion.png",
          title: "ดูคะแนน"),
      MenuItem(
          urlImage:
              "assets/icons/icon-product.png",
          title: "แลกคูปอง"),
      MenuItem(
          urlImage:
              "assets/icons/icon-allmember.png",
          title: "สิทธิพิเศษ"),
      
    ];
  }


}
