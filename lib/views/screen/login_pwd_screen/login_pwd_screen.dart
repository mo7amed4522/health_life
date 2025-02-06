import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_life/controller/login_pwd_screen_controller/login_pwd_screen_controller.dart';
import 'package:health_life/core/assets/app_assets.dart';
import 'package:health_life/views/widget/login_pwd_screen_widget/password_card.dart';

class LoginPwdScreen extends StatelessWidget {
  const LoginPwdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginPwdScreenControllerIMP>(
        init: LoginPwdScreenControllerIMP(),
        builder: (controller) => GetBuilder<LoginPwdScreenControllerIMP>(
          init: LoginPwdScreenControllerIMP(),
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SafeArea(
                        child: InkWell(
                          onTap: controller.goBack,
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              AppPhotoLink.backImage,
                              color: Theme.of(context).primaryColor,
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height / 9),
                      Center(
                        child: Image.asset(
                          AppPhotoLink.logoImage,
                          height: 100,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Login".tr,
                            style: GoogleFonts.poppins(
                              fontSize: 25,
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      PasswordCard(
                        pwdController: controller.pwdController,
                        pwdFocus: controller.pwdFocus,
                        pwdError: controller.pwdError,
                        onForgotPwdTap: controller.onForgotPwdTap,
                        onContinueTap: controller.onContinueTap,
                        showPwd: controller.showPwd,
                        onViewBtnTap: controller.onViewBtnTap,
                        email: controller.email,
                        onChangeEmailTap: controller.onBackBtnTap,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
