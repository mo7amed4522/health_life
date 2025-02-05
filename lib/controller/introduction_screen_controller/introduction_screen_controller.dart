import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_life/core/router/route.dart';
import 'package:health_life/core/server/my_server.dart';
import 'package:health_life/models/introduction_model.dart';

abstract class IntroductionScreenController  extends GetxController{
   next();
  onPageChange(int index);
}
class IntroductionScreenContollerImp extends IntroductionScreenController{
late PageController pageController;
  MyServices myServise = Get.find();
  int currentPage = 0;

  @override
  next() {
    currentPage++;
   if(currentPage > introductionModelList.length -1){
    myServise.sharedPreferences.setString("step", "1");
     Get.offAllNamed(AppRoutes.loginPage);
   }else{
     pageController.animateToPage(
      currentPage,
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeInOut,
    );
   }
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}