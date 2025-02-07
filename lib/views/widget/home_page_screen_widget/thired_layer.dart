// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, sized_box_for_whitespace, avoid_print, deprecated_member_use, prefer_final_fields, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_life/controller/customer_drawer_controller.dart/customer_drower_controller.dart';
import 'package:health_life/core/assets/app_assets.dart';
import 'package:health_life/core/constant/custom_button.dart';
import 'package:health_life/views/widget/home_page_screen_widget/custom_widget.dart';
import 'package:sizer/sizer.dart';

class ThierdPage extends StatelessWidget {
  const ThierdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Theme.of(context).colorScheme.background,
      child: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: AppBar().preferredSize.height),
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: [
                    Image.asset(
                      AppPhotoLink.logoImage,
                      height: 100,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "Health Life",
                      style: GoogleFonts.pacifico(
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GetBuilder<CustomerDrawerControllerIMP>(
              init: CustomerDrawerControllerIMP(),
              builder: (controller) => Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: AppBar().preferredSize.height + 30.h, right: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomWidgetButtons(
                        titleName: "home".tr,
                        svgName: AppPhotoLink.homeSVG,
                        onButtonTap: () {
                          controller.checkIndexOfScreen(0);
                        },
                      ),
                      SizedBox(
                          width: 40.w,
                          height: 4.h,
                          child: Divider(
                            color: Theme.of(context).colorScheme.background,
                          )),
                      CustomWidgetButtons(
                        titleName: "injurie".tr,
                        svgName: AppPhotoLink.injurieSVG,
                        onButtonTap: () {
                          controller.checkIndexOfScreen(1);
                        },
                      ),
                      SizedBox(
                          width: 40.w,
                          height: 4.h,
                          child: Divider(
                            color: Theme.of(context).colorScheme.background,
                          )),
                      CustomWidgetButtons(
                        titleName: "program".tr,
                        svgName: AppPhotoLink.programSVG,
                        onButtonTap: () {
                          controller.checkIndexOfScreen(3);
                        },
                      ),
                      SizedBox(
                          width: 40.w,
                          height: 4.h,
                          child: Divider(
                            color: Theme.of(context).colorScheme.background,
                          )),
                      CustomWidgetButtons(
                        titleName: "doctor".tr,
                        svgName: AppPhotoLink.doctorSVG,
                        onButtonTap: () {
                          controller.checkIndexOfScreen(2);
                        },
                      ),
                      SizedBox(
                          width: 40.w,
                          height: 4.h,
                          child: Divider(
                            color: Theme.of(context).colorScheme.background,
                          )),
                      CustomWidgetButtons(
                        titleName: "setting".tr,
                        svgName: AppPhotoLink.settingSVG,
                        onButtonTap: () {
                          controller.checkIndexOfScreen(4);
                        },
                      ),
                      SizedBox(
                          width: 40.w,
                          height: 4.h,
                          child: Divider(
                            color: Theme.of(context).colorScheme.background,
                          )),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: SubmitButton1(
                            onTap: () {},
                            title: "signout".tr,
                          ),
                        ),
                      ),
                      SizedBox(height: 1.6.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
