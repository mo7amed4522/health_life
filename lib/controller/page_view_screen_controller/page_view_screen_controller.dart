import 'package:get/get.dart';
import 'package:health_life/core/router/route.dart';

abstract class PageViewScreenController extends GetxController {
  void goBack();
  void goToHomePage();
}

class PageViewScreenControllerIMP extends PageViewScreenController {
  @override
  void onInit() {
    //diseases = Get.arguments["dataOfModel"];
    super.onInit();
  }

  @override
  void goBack() {
    Get.back();
  }

  @override
  void goToHomePage() {
    Get.toNamed(AppRoutes.homePage);
  }
}
