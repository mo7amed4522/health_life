// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_life/controller/page_view_screen_controller/page_view_screen_controller.dart';
import 'package:health_life/core/assets/app_assets.dart';
import 'package:health_life/core/constant/custom_button.dart';
import 'package:sizer/sizer.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Assuming controller.diseases!.symptoms!.one! is a List

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          GetBuilder<PageViewScreenControllerIMP>(
            init: PageViewScreenControllerIMP(),
            builder: (controller) => SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
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
                    Center(
                      child: Image.asset(
                        AppPhotoLink.logoImage,
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.5,
                      width: MediaQuery.of(context).size.width,
                      child: PageView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) => SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "Ahmeed",
                                  style: GoogleFonts.poppins(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: Text(
                                  "ali",
                                  style: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.sp, vertical: 10.sp),
                                child: SubmitButton1(
                                  onTap: controller.goToHomePage,
                                  title: "choice".tr,
                                ),
                              ),
                              //SizedBox(height: 1.h),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
