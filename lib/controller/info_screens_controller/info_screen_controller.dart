import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:health_life/core/assets/app_assets.dart';
import 'package:health_life/core/router/route.dart';
import 'package:health_life/models/test_disease.dart';

abstract class InformationScreenController extends GetxController {
  void goToPageView(int index);
}

class InformationScreenControllerIMP extends InformationScreenController {
  TestDiseases? testDiseases;
  List<Data>? diseases;
  bool isLoad = false;

  @override
  void onInit() {
    loadDiseases();
    super.onInit();
  }

  // Method to load and parse the JSON data
  loadDiseases() async {
    isLoad = false;
    String jsonString = await rootBundle.loadString(AppPhotoLink.newfileFile);
    var jsonList = jsonDecode(jsonString);
    testDiseases = TestDiseases.fromJson(jsonList);
    diseases = testDiseases!.data;
    isLoad = true;
    update();
  }

  @override
  void goToPageView(int index) {
    Get.toNamed(AppRoutes.pageViewPage,
        arguments: {"dataOfModel": diseases![index]});
  }
}
