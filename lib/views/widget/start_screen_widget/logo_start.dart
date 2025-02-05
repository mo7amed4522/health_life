import 'package:flutter/material.dart';
import 'package:health_life/core/assets/app_assets.dart';
import 'package:lottie/lottie.dart';

class LogoStartWidget extends StatelessWidget {
  const LogoStartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Lottie.asset(
        AppPhotoLink.start_animation,
        fit: BoxFit.cover,
      ),
    );
  }
}