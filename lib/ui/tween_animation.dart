import 'dart:math';

import 'package:flutter/material.dart';

class MyTweenAnimation extends StatelessWidget {
  MyTweenAnimation({Key? key}) : super(key: key);

  final Tween<double> _scaleTween = Tween(begin: 0, end: 2 * pi);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween animation"),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: _scaleTween,
          duration: const Duration(seconds: 1),
          builder: (context, scale, child) {
            return Transform.rotate(angle: scale as double,child: child,);
          },
          child: Container(
            width: 150,
            height: 150,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
