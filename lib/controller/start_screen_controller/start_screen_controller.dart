import 'package:get/get.dart';
import 'package:health_life/core/router/route.dart';

abstract class StartScreenController  extends GetxController{}
class StartScreenControllerIMP extends StartScreenController{

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3),()async{
      Get.toNamed(AppRoutes.introPage);
    });
    super.onInit();
  }
}