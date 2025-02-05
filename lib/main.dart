// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_life/controller/biding.dart';
import 'package:health_life/core/router/app_route.dart';
import 'package:health_life/core/theme/app_theme.dart';
import 'package:health_life/core/translate/translate_app.dart';
import 'package:sizer/sizer.dart';
import 'package:health_life/core/server/my_server.dart';


class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

MyServices myServices = Get.find();
void initialize() {
  if (myServices.sharedPreferences.getBool('theme') == true) {
    Get.changeThemeMode(ThemeMode.dark);
  } else if (myServices.sharedPreferences.getBool('theme') == false) {
    Get.changeThemeMode(ThemeMode.light);
  } else {
    Get.changeThemeMode(ThemeMode.system);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, devicetype) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        onInit: initialize,
        translations: MyTranslation(),
        darkTheme: AppColor.customDarkThem,
        theme: AppColor.customLightThem,
        locale: Locale('ar'),
        themeMode: ThemeMode.system,
        title: 'app_name'.tr,
        initialBinding: InitialBindings(),
        getPages: routes,
      ),
    );
  }
}