import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_life/controller/introduction_screen_controller/introduction_screen_controller.dart';
import 'package:health_life/views/widget/intro_screen_widget/custom_button_widget.dart';
import 'package:health_life/views/widget/intro_screen_widget/custom_page_view.dart';
import 'package:health_life/views/widget/intro_screen_widget/dotController.dart';
import 'package:sizer/sizer.dart';


class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(IntroductionScreenContollerImp());
    return Scaffold(
      backgroundColor:Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          const Expanded(
            flex: 6,
            child:CustomPageViewIntroductionScreen()
          ),
          Expanded(
            flex: 1,
            child: Column(
              children:const[
                CustomDotControllerIntroductionScreen(),
                Spacer(flex: 2),
              ],
            ),
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: CustomButtonOnBoarding(buttonName: "التالي"),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text("Khaled Mohamess"),
              ),
            ],
          ),
          SizedBox(height: 8.h),
        ],
      )),
    );
  }
}