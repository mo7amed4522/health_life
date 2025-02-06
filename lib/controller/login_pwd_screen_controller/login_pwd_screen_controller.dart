import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_life/core/constant/forget_password_widget.dart';
import 'package:health_life/core/router/route.dart';

abstract class LoginPwdScreenController extends GetxController {
  void goBack();
  void onForgotPwdTap();
  void onContinueTap();
  void onViewBtnTap();
  void onBackBtnTap();
}

class LoginPwdScreenControllerIMP extends LoginPwdScreenController {
  String email = '';
  late TextEditingController pwdController;
  FocusNode pwdFocus = FocusNode();
  String pwdError = "";
  bool showPwd = false;
  bool isVerified = false;
  FocusNode resetFocusNode = FocusNode();
  bool isResetBtnVisible = false;

  @override
  void onInit() {
    pwdController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    pwdController.dispose();
    super.dispose();
  }

  @override
  void goBack() {
    Get.back();
  }

  @override
  void onBackBtnTap() {}

  @override
  void onContinueTap() {
    Get.toNamed(AppRoutes.infoPage);
  }

  void resetBtnClick(TextEditingController controller) async {}

  @override
  void onForgotPwdTap() {
    Get.bottomSheet(
      ForgotPassword(
        resetBtnClick: resetBtnClick,
        resetFocusNode: resetFocusNode,
      ),
    );
  }

  @override
  void onViewBtnTap() {
    showPwd = !showPwd;
    update();
  }
}
