// ignore_for_file: must_be_immutable

import 'package:eleven_clone/constance/global_constance.dart';
import 'package:flutter/material.dart';

import '../constance/dimention.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  TextOverflow textoverflow;
  FontWeight fontWeight;
  BigText(
      {
      
      super.key, required this.text,
      this.size = 0,
      this.fontWeight = FontWeight.w600,
      this.color = GlobalVariable.secondary,
      this.textoverflow = TextOverflow.ellipsis});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: textoverflow,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: fontWeight,
      ),
    );
  }
}

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  double height;
  TextOverflow textoverflow;

  SmallText(
      {super.key, required this.text,
      this.size = 0,
      this.height = 1.2,
      this.color =  const Color.fromRGBO(82 ,82 ,82, 1),
      this.textoverflow = TextOverflow.ellipsis});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow: textoverflow,
      style: TextStyle(
        color: color,
        height: height,
        fontSize: size == 0 ? Dimensions.font12 : size,
        // fontWeight: FontWeight.bold,
        
      ),
    );
  }
}
