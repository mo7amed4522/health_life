// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_life/controller/introduction_screen_controller/introduction_screen_controller.dart';
import 'package:health_life/views/widget/splash%20screen/care_view.dart';
import 'package:health_life/views/widget/splash%20screen/center_next_button.dart';
import 'package:health_life/views/widget/splash%20screen/mood_diary_vew.dart';
import 'package:health_life/views/widget/splash%20screen/relax_view.dart';
import 'package:health_life/views/widget/splash%20screen/splash_view.dart';
import 'package:health_life/views/widget/splash%20screen/top_back_skip_view.dart';
import 'package:health_life/views/widget/splash%20screen/welcome_view.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GetBuilder<IntroductionScreenContollerImp>(
        init: IntroductionScreenContollerImp(),
        builder: (controller) => ClipRect(
          child: Stack(
            children: [
              SplashView(
                animationController: controller.animationController,
              ),
              RelaxView(
                animationController: controller.animationController,
              ),
              CareView(
                animationController: controller.animationController,
              ),
              MoodDiaryVew(
                animationController: controller.animationController,
              ),
              WelcomeView(
                animationController: controller.animationController,
              ),
              TopBackSkipView(
                onBackClick: controller.onBackClick,
                onSkipClick: controller.onSkipClick,
                animationController: controller.animationController,
              ),
              CenterNextButton(
                animationController: controller.animationController,
                onNextClick: controller.onNextClick,
                onLoginClick: controller.onLoginClick,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
