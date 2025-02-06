// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_life/core/assets/app_assets.dart';
import 'package:health_life/core/constant/custom_button.dart';

class PasswordCard extends StatelessWidget {
  final TextEditingController pwdController;
  final FocusNode pwdFocus;
  final String pwdError;
  final bool showPwd;
  final VoidCallback onContinueTap;
  final VoidCallback onForgotPwdTap;
  final VoidCallback onViewBtnTap;
  final VoidCallback onChangeEmailTap;
  final String email;

  const PasswordCard(
      {super.key,
      required this.pwdController,
      required this.pwdFocus,
      required this.pwdError,
      required this.showPwd,
      required this.onContinueTap,
      required this.onForgotPwdTap,
      required this.onViewBtnTap,
      required this.email,
      required this.onChangeEmailTap});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          margin: EdgeInsets.only(left: 8, right: 8, bottom: 30),
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              profileBox(context),
              SizedBox(height: 30),
              Container(
                height: 44,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                alignment: Alignment.center,
                child: TextField(
                  focusNode: pwdFocus,
                  controller: pwdController,
                  obscureText: !showPwd,
                  style: GoogleFonts.poppins(
                    color: Theme.of(context).colorScheme.background,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 14, top: 10),
                    border: InputBorder.none,
                    hintText: pwdError == "" ? "password".tr : pwdError,
                    suffixIcon: InkWell(
                      onTap: onViewBtnTap,
                      child: Padding(
                        padding: EdgeInsets.only(top: 14),
                        child: Text(
                          showPwd ? "hide".tr : "show".tr,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .tertiaryContainer,
                                  )),
                        ),
                      ),
                    ),
                    hintStyle: TextStyle(
                      color: pwdError == ""
                          ? Theme.of(context).colorScheme.tertiaryContainer
                          : Theme.of(context).colorScheme.secondary,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SubmitButton1(title: "continueText".tr, onTap: onContinueTap),
              SizedBox(height: 28),
              InkWell(
                onTap: onForgotPwdTap,
                child: Text("forgotYourPassword".tr,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                    )),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileBox(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter the password for the account \nwith the email below'.tr,
            style: GoogleFonts.poppins(
              fontSize: 17,
              textStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(email,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                    )),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: onChangeEmailTap,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Image.asset(
                    AppPhotoLink.editImage,
                    width: 20,
                    height: 20,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
