import 'package:flutter/material.dart';

class CustomPageTransaction extends PageRouteBuilder {
  final Widget child;
  CustomPageTransaction({required this.child})
      : super(
        transitionDuration: const Duration(seconds:1),
        pageBuilder: (context, animationm, secondaryAnimation) => child);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimanion, Widget child) =>
      ScaleTransition(scale: animation, child: child);
}
