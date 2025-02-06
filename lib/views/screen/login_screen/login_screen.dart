import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_life/controller/login_screen_controller/login_screen_controller.dart';
import 'package:health_life/core/assets/app_assets.dart';
import 'package:health_life/views/widget/login_screen_widget/custom_card_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginScreenControllerIMP>(
        init: LoginScreenControllerIMP(),
        builder: (controller) => Stack(
          children: [
            SingleChildScrollView(
              child: Image.asset(
                AppPhotoLink.loginImage,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 6),
                    Image.asset(
                      AppPhotoLink.logoImage,
                      height: 100,
                      width: 176,
                      fit: BoxFit.cover,
                    ),
                    //SizedBox(height: 23),
                    Text("continueText".tr,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          letterSpacing: 2.0,
                        )),
                    SizedBox(height: Get.height / 13),
                    AuthCard(
                      emailController: controller.emailController,
                      emailFocus: controller.emailFocus,
                      emailError: controller.emailError,
                      onContinueTap: controller.onContinueClick,
                      onGoogleTap: controller.onGoogleClick,
                      onAppleTap: controller.onAppleClick,
                      onSignUpTap: controller.onSignUpClick,
                      onForgotPwdTap: controller.onForgotPasswordClick,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
