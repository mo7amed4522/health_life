import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_life/controller/register_screen_controller/register_screen_controller.dart';
import 'package:health_life/core/assets/app_assets.dart';
import 'package:health_life/views/widget/register_screen_widget/register_card.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<RegisterSCreenControllerIMP>(
        init: RegisterSCreenControllerIMP(),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 15, top: AppBar().preferredSize.height),
                  child: InkWell(
                    onTap: controller.onBackTap,
                    child: Image.asset(
                      AppPhotoLink.backImage,
                      width: 25,
                      height: 25,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: SingleChildScrollView(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      child: Column(
                        children: [
                          SizedBox(height: Get.height * 0.07),
                          Image.asset(
                            AppPhotoLink.logoImage,
                            height: 100,
                            width: 176,
                            fit: BoxFit.cover,
                          ),
                          Row(
                            children: [
                              SizedBox(width: 20),
                              Text("register".tr,
                                  style: GoogleFonts.poppins(
                                    fontSize: 25,
                                    textStyle:
                                        Theme.of(context).textTheme.bodyLarge,
                                  )),
                            ],
                          ),
                          SizedBox(height: 10),
                          RegisterCard()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
