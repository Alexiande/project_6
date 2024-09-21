import 'package:flutter/material.dart';

class MyRoute extends MaterialPageRoute<void> {
  MyRoute({required super.builder});

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}
