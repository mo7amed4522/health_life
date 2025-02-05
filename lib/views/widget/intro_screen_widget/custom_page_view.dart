import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_life/controller/introduction_screen_controller/introduction_screen_controller.dart';
import 'package:health_life/models/introduction_model.dart';
class CustomPageViewIntroductionScreen extends GetView<IntroductionScreenContollerImp> {
  const CustomPageViewIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChange(value);
      },
      itemCount: introductionModelList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Text(
            introductionModelList[index].title!,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 80),
          Image.asset(
            introductionModelList[index].image!,
            width: Get.width/1.3,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 80),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              introductionModelList[index].body!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}