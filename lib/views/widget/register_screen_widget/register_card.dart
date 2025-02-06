// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_life/controller/register_screen_controller/register_screen_controller.dart';
import 'package:health_life/core/constant/custom_button.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: GetBuilder<RegisterSCreenControllerIMP>(
        init: RegisterSCreenControllerIMP(),
        builder: (controller) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            margin: EdgeInsets.only(left: 8, right: 8, bottom: 30),
            padding: EdgeInsets.symmetric(vertical: 22, horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).colorScheme.background,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Looks like you don't have an account. \nLet's create new account "
                        .tr,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                    )),
                const SizedBox(height: 25),
                textField(
                  context: context,
                  controller: controller.emailController,
                  focusNode: controller.emailFocus,
                  error: controller.emailError,
                  textCapitalization: TextCapitalization.none,
                  hint: "Email".tr,
                ),
                const SizedBox(height: 20),
                textField(
                  context: context,
                  controller: controller.fullNameController,
                  focusNode: controller.fullNameFocus,
                  error: controller.fullNameError,
                  textCapitalization: TextCapitalization.sentences,
                  hint: "fullName".tr,
                ),
                const SizedBox(height: 20),
                textField(
                    context: context,
                    controller: controller.pwdController,
                    focusNode: controller.pwdFocus,
                    error: controller.pwdError,
                    hint: "password".tr,
                    showPwd: controller.showPwd,
                    textCapitalization: TextCapitalization.sentences,
                    onViewTap: controller.onViewTap),
                const SizedBox(height: 20),
                textField(
                  context: context,
                  controller: controller.confirmPwdController,
                  focusNode: controller.confirmPwdFocus,
                  error: controller.confirmPwdError,
                  hint: "confirmPassword".tr,
                  textCapitalization: TextCapitalization.sentences,
                  showPwd: false,
                ),
                SizedBox(height: 20),
                textField(
                    context: context,
                    controller: controller.ageController,
                    focusNode: controller.ageFocus,
                    error: controller.ageError,
                    hint: "enterAge".tr,
                    textCapitalization: TextCapitalization.sentences,
                    textInputType: TextInputType.number),
                SizedBox(height: 25),
                policyText(context),
                SizedBox(height: 30),
                SubmitButton1(
                    title: "agreeNContinue".tr,
                    onTap: controller.onContinueTap),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textField(
      {required BuildContext context,
      required TextEditingController controller,
      required FocusNode focusNode,
      required String error,
      required String hint,
      bool? showPwd,
      required TextCapitalization textCapitalization,
      VoidCallback? onViewTap,
      TextInputType textInputType = TextInputType.text}) {
    return Container(
      height: 44,
      width: Get.width,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextField(
        focusNode: focusNode,
        controller: controller,
        obscureText: showPwd == null ? false : !showPwd,
        textCapitalization: textCapitalization,
        keyboardType: textInputType,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.background,
              ),
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 14, top: 12),
          border: InputBorder.none,
          hintText: error == "" ? hint : error,
          suffixIcon: onViewTap == null
              ? const SizedBox()
              : InkWell(
                  onTap: onViewTap,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Text(
                      showPwd! ? "hide".tr : "show".tr,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ),
          hintStyle: TextStyle(
            color: error == ""
                ? Theme.of(context).colorScheme.onPrimary
                : Theme.of(context).colorScheme.secondary,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget policyText(BuildContext context) {
    return GetBuilder<RegisterSCreenControllerIMP>(
      init: RegisterSCreenControllerIMP(),
      builder: (controller) => RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: "policy1".tr,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                )),
            TextSpan(
              text: "policy2".tr,
              recognizer: TapGestureRecognizer()
                ..onTap = controller.onTermsOfUseTap,
              style: GoogleFonts.poppins(
                fontSize: 13,
                textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            ),
            TextSpan(
              text: "policy3".tr,
              style: GoogleFonts.poppins(
                fontSize: 13,
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            TextSpan(
              text: "policy4".tr,
              recognizer: TapGestureRecognizer()
                ..onTap = controller.onPrivacyPolicyTap,
              style: GoogleFonts.poppins(
                  fontSize: 13,
                  textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
