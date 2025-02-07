import 'package:get/get.dart';
import 'package:health_life/core/router/route.dart';

abstract class InformationScreenController extends GetxController {
  void goToPageView();
}

class InformationScreenControllerIMP extends InformationScreenController {
  @override
  void goToPageView() {
    Get.toNamed(AppRoutes.pageViewPage);
  }
}
