// ignore_for_file: body_might_complete_normally_nullable

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:health_life/core/router/route.dart';
import 'package:health_life/core/server/my_server.dart';


class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: AppRoutes.introPage);
    }
    if (myServices.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: AppRoutes.loginPage);
    }
  }
}