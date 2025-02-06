import 'package:get/get.dart';
import 'package:health_life/models/test_disease.dart';

abstract class PageViewScreenController extends GetxController {
  void goBack();
  void changeValue(String value);
}

class PageViewScreenControllerIMP extends PageViewScreenController {
  Data? diseases;
  String? selectedSymptom;
  int? selectedSymptomIndex; // Holds the index of the selected symptom

  @override
  void onInit() {
    diseases = Get.arguments["dataOfModel"];
    super.onInit();
  }

  @override
  void goBack() {
    Get.back();
  }

  @override
  void changeValue(String value) {
    selectedSymptom = value;
    update();
  }
}
