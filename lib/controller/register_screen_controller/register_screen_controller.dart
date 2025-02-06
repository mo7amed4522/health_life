import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RegisterScreenController extends GetxController {
  void onViewTap();
  void onContinueTap();
  void onTermsOfUseTap();
  void onPrivacyPolicyTap();
  void onBackTap();
}

class RegisterSCreenControllerIMP extends RegisterScreenController {
  late TextEditingController fullNameController;
  late TextEditingController emailController;
  late TextEditingController pwdController;
  late TextEditingController confirmPwdController;
  late TextEditingController ageController;

  FocusNode fullNameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode pwdFocus = FocusNode();
  FocusNode confirmPwdFocus = FocusNode();
  FocusNode ageFocus = FocusNode();

  String fullNameError = '';
  String emailError = '';
  String pwdError = '';
  String confirmPwdError = '';
  String ageError = '';

  bool showPwd = false;

  @override
  void onInit() {
    fullNameController = TextEditingController();
    emailController = TextEditingController();
    pwdController = TextEditingController();
    confirmPwdController = TextEditingController();
    ageController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    pwdController.dispose();
    confirmPwdController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  void onContinueTap() {}

  @override
  void onPrivacyPolicyTap() {}

  @override
  void onTermsOfUseTap() {}

  @override
  void onViewTap() {
    showPwd = !showPwd;
    update();
  }

  @override
  void onBackTap() {
    Get.back();
  }
}
