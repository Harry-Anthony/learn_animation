import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimationController extends StatefulWidget {
  const MyAnimationController({Key? key}) : super(key: key);

  @override
  State<MyAnimationController> createState() => _MyAnimationControllerState();
}

class _MyAnimationControllerState extends State<MyAnimationController>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation controller"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: animationController.view,
          builder: (context, child) {
            return Transform.rotate(
              angle: animationController.value * 2 * pi,
              child: child,
            );
          },
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
