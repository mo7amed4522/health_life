import 'package:get/get.dart';
import 'package:health_life/core/constant/crud_operation.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}