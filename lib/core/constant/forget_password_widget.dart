// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  final Function(TextEditingController controller) resetBtnClick;
  final FocusNode resetFocusNode;
  final String? email;

  const ForgotPassword(
      {super.key,
      required this.resetBtnClick,
      required this.resetFocusNode,
      this.email});

  @override
  Widget build(BuildContext context) {
    TextEditingController forgotEditController =
        TextEditingController(text: email);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: AspectRatio(
          aspectRatio: 1 / 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 15.0, top: 15, left: 15, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "forgotYourPassword".tr,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.close_rounded,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Enter your mail on which you have \ncreated an account. We will send a link \nto reset your password"
                      .tr,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: Get.width / 15),
                child: Text("Email".tr,
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  controller: forgotEditController,
                  focusNode: resetFocusNode,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  ),
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const Spacer(),
              InkWell(
                onTap: () => resetBtnClick(forgotEditController),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text("Reset".tr,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.bodyLarge,
                      )),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
