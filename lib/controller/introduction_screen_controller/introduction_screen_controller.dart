import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_life/core/router/route.dart';

abstract class IntroductionScreenController extends GetxController {
  void onSkipClick();
  void onBackClick();
  void onNextClick();
  void signUpClick();
  void onLoginClick();
}

class IntroductionScreenContollerImp extends IntroductionScreenController
    with GetTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void onInit() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 8));
    animationController.animateTo(0.0);
    super.onInit();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void onSkipClick() {
    animationController.animateTo(0.8,
        duration: const Duration(milliseconds: 1200));
  }

  @override
  void onBackClick() {
    if (animationController.value >= 0 && animationController.value <= 0.2) {
      animationController.animateTo(0.0);
    } else if (animationController.value > 0.2 &&
        animationController.value <= 0.4) {
      animationController.animateTo(0.2);
    } else if (animationController.value > 0.4 &&
        animationController.value <= 0.6) {
      animationController.animateTo(0.4);
    } else if (animationController.value > 0.6 &&
        animationController.value <= 0.8) {
      animationController.animateTo(0.6);
    } else if (animationController.value > 0.8 &&
        animationController.value <= 1.0) {
      animationController.animateTo(0.8);
    }
  }

  @override
  void onNextClick() {
    if (animationController.value >= 0 && animationController.value <= 0.2) {
      animationController.animateTo(0.4);
    } else if (animationController.value > 0.2 &&
        animationController.value <= 0.4) {
      animationController.animateTo(0.6);
    } else if (animationController.value > 0.4 &&
        animationController.value <= 0.6) {
      animationController.animateTo(0.8);
    } else if (animationController.value > 0.6 &&
        animationController.value <= 0.8) {
      signUpClick();
    }
  }

  @override
  void signUpClick() {
    Get.toNamed(AppRoutes.registerPage);
  }

  @override
  void onLoginClick() {
    Get.toNamed(AppRoutes.loginPage);
  }
}
