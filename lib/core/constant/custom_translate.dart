import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFadeScaleTransition extends CustomTransition {
  @override
  Widget buildTransition(
    BuildContext context,
    Curve? curve,
    Alignment? alignment,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: CurvedAnimation(
        parent: animation,
        curve: curve!,
      ),
      child: ScaleTransition(
        scale: CurvedAnimation(
          parent: animation,
          curve: curve,
        ),
        child: child,
      ),
    );
  }
}
