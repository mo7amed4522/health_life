// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:health_life/controller/introduction_screen_controller/introduction_screen_controller.dart';
import 'package:health_life/models/introduction_model.dart';


class CustomDotControllerIntroductionScreen extends StatelessWidget {
  const CustomDotControllerIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroductionScreenContollerImp>(
      init: IntroductionScreenContollerImp(),
      builder: (_controller) =>Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          introductionModelList.length,
          (index) => AnimatedContainer(
            margin: const EdgeInsets.only(right: 5),
            duration: const Duration(milliseconds: 900),
            width: _controller.currentPage == index ? 20 : 5,
            height: 6,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    ),
    );
  }
}