// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:health_life/controller/introduction_screen_controller/introduction_screen_controller.dart';

class CustomButtonOnBoarding extends GetView<IntroductionScreenContollerImp>{
  final String buttonName;
  const CustomButtonOnBoarding({super.key,required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        textColor: Colors.white,
        color: Theme.of(context).primaryColor,
        child:  Text(
          buttonName,
        ),
      ),
    );
  }
}