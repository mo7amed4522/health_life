// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_life/controller/info_screens_controller/info_screen_controller.dart';
import 'package:health_life/core/assets/app_assets.dart';
import 'package:health_life/views/widget/info_screen_widget/custom_card_widget.dart';
import 'package:sizer/sizer.dart';

class InformationScreens extends StatelessWidget {
  const InformationScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GetBuilder<InformationScreenControllerIMP>(
        init: InformationScreenControllerIMP(),
        builder: (controller) => Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SafeArea(
                      child: Center(
                        child: Image.asset(
                          AppPhotoLink.logoImage,
                          height: 100,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 40,
                      child: ListView.separated(
                        itemCount: 3,
                        separatorBuilder: (BuildContext context, int index) =>
                            SizedBox(height: 2.h),
                        itemBuilder: (context, index) => CustomCardWidget(
                          data: "Ahmed",
                          onTap: () {
                            controller.goToPageView();
                          },
                        ),
                      ),
                    )
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
