import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_life/core/assets/app_assets.dart';
import 'package:health_life/views/widget/home_scree_widget/custom_list_widget.dart';
import 'package:sizer/sizer.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "home".tr,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 20.sp,
                    ),
              ),
            ),
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Image.asset(
                AppPhotoLink.logoImage,
                height: 35.sp,
                width: 35.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.sp),
                    child: Text(
                      "Welcome".tr,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.sp),
                    child: Text(
                      "خالد محمد عبده",
                      style: GoogleFonts.poppins(
                        textStyle:
                            Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 250,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomListWidget(
                    onTap: () {},
                    data: "todotask".tr,
                    description: "todoDisc".tr,
                    assetsImage: AppPhotoLink.todoTaskImage,
                  ),
                  CustomListWidget(
                    onTap: () {},
                    data: "myProg".tr,
                    description: "progDesc".tr,
                    assetsImage: AppPhotoLink.myProgramImage,
                  ),
                  CustomListWidget(
                    onTap: () {},
                    data: "injurie".tr,
                    description: "injurieDesc".tr,
                    assetsImage: AppPhotoLink.injurieImage,
                  ),
                  CustomListWidget(
                    onTap: () {},
                    data: "startNewProg".tr,
                    description: "startNewProgDesc".tr,
                    assetsImage: AppPhotoLink.startNewProgramImage,
                  ),
                  CustomListWidget(
                    onTap: () {},
                    data: "aboutUs".tr,
                    description: "aboutUsDesc".tr,
                    assetsImage: AppPhotoLink.aboutUSImage,
                  ),
                  CustomListWidget(
                    onTap: () {},
                    data: "faq".tr,
                    description: "faqDesc".tr,
                    assetsImage: AppPhotoLink.fagImage,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
