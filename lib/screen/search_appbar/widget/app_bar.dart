// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eleven_clone/constance/global_constance.dart';
import 'package:flutter/material.dart';


class AppBarWidget extends StatelessWidget {
  final String? text;
  final bool addproduct;
  const AppBarWidget({
    Key? key,
    this.text,
    required this.addproduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: GlobalVariable.appBarGrandient,
        ),
      ),
      title: addproduct
          ? Container(
              child: Text(
                text!,
                style: const TextStyle(color: Colors.black),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/amazon_in.png',
                    width: 120,
                    height: 45,
                    color: Colors.black,
                  ),
                ),
                if (text != null)
                  Text(
                    text!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
              ],
            ),
    );
  }
}
