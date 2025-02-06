import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_life/core/router/route.dart';

abstract class LoginScreenController extends GetxController {
  void onContinueClick();
  void onGoogleClick();
  void onAppleClick();
  void onSignUpClick();
  void onForgotPasswordClick();
}

class LoginScreenControllerIMP extends LoginScreenController {
  late TextEditingController emailController;
  FocusNode emailFocus = FocusNode();
  String emailError = "";
  String appleUserName = '';
  FocusNode resetFocusNode = FocusNode();

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  void onAppleClick() {}

  @override
  void onContinueClick() {
    Get.toNamed(AppRoutes.loginPWDPage);
  }

  @override
  void onForgotPasswordClick() {}

  @override
  void onGoogleClick() {}

  @override
  void onSignUpClick() {
    Get.toNamed(AppRoutes.registerPage);
  }
}
