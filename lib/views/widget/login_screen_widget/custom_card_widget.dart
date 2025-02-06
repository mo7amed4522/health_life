// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_life/core/assets/app_assets.dart';
import 'package:health_life/core/constant/custom_button.dart';

class AuthCard extends StatelessWidget {
  final TextEditingController emailController;
  final FocusNode emailFocus;
  final String emailError;
  final VoidCallback onContinueTap;
  final VoidCallback onGoogleTap;
  final VoidCallback onAppleTap;
  final VoidCallback onSignUpTap;
  final VoidCallback onForgotPwdTap;

  const AuthCard({
    super.key,
    required this.emailController,
    required this.emailFocus,
    required this.emailError,
    required this.onContinueTap,
    required this.onGoogleTap,
    required this.onAppleTap,
    required this.onSignUpTap,
    required this.onForgotPwdTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          margin: EdgeInsets.only(left: 8, right: 8, bottom: 30),
          padding: EdgeInsets.symmetric(vertical: 23, horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 44,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextField(
                  controller: emailController,
                  focusNode: emailFocus,
                  style: GoogleFonts.poppins(
                      color: Theme.of(context).colorScheme.background),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 14),
                      border: InputBorder.none,
                      hintText: emailError == "" ? "Email".tr : emailError,
                      hintStyle: GoogleFonts.poppins(
                        color: emailError == ""
                            ? Theme.of(context).colorScheme.background
                            : Theme.of(context).colorScheme.primary,
                        fontSize: 14,
                      )),
                ),
              ),
              SizedBox(height: 15),
              SubmitButton1(title: "continueText".tr, onTap: onContinueTap),
              SizedBox(height: 15),
              Center(
                child: Text("or".tr,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                    )),
              ),
              SizedBox(height: 15),
              socialButton(
                context,
                Image.asset(
                  AppPhotoLink.googleImage,
                  height: 20,
                  width: 20,
                ),
                "google".tr,
                onGoogleTap,
                const EdgeInsets.symmetric(horizontal: 16),
              ),
              const SizedBox(height: 15),
              Visibility(
                visible: Platform.isIOS ? true : false,
                child: socialButton(
                  context,
                  Image.asset(
                    AppPhotoLink.appleImage,
                    height: 25,
                    width: 25,
                  ),
                  "apple".tr,
                  onAppleTap,
                  const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Text("donTHaveAnAccount".tr,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                      )),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: onSignUpTap,
                    child: Text("Sign Up".tr,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            )),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: onForgotPwdTap,
                child: Text("forgotYourPassword".tr,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      textStyle:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget socialButton(BuildContext context, Image image, String title,
      VoidCallback onTap, EdgeInsets padding) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44,
        width: Get.width,
        padding: padding,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 10,
              child: image,
            ),
            Text(title,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  textStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Theme.of(context).colorScheme.secondary),
                )),
          ],
        ),
      ),
    );
  }
}
