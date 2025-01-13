import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCustomTransition extends CustomTransition {

  @override
  Widget buildTransition(
    BuildContext context,
    Curve? curve,
    Alignment? alignment,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(
        CurvedAnimation(parent: animation, curve: curve ?? Curves.easeInOut),
      ),
      child: child,
    );
  }
}
