import 'package:get/get.dart';
import 'package:health_life/views/screen/doctor_scree/doctor_screen.dart';
import 'package:health_life/views/screen/home_page_screen/home_page_screen.dart';
import 'package:health_life/views/screen/injurie_screen/injurie_screen.dart';
import 'package:health_life/views/screen/program_screen/program_screen.dart';
import 'package:health_life/views/screen/settings_screen/settings_screen.dart';

abstract class CustomerDrowerController extends GetxController {}

class CustomerDrawerControllerIMP extends CustomerDrowerController {
  int currentIndex = 0;
  var screen = [
    const HomePageScreen(),
    const InjurieScreen(),
    const DoctorScreen(),
    const ProgramScreen(),
    const SettingsScreen(),
  ];

  void checkIndexOfScreen(int index) {
    if (currentIndex == 0) {
      currentIndex = index;
      update();
    } else if (currentIndex == 1) {
      currentIndex = index;
      update();
    } else if (currentIndex == 2) {
      currentIndex = index;
      update();
    } else if (currentIndex == 3) {
      currentIndex = index;
      update();
    } else if (currentIndex == 4) {
      currentIndex = index;
      update();
    }
  }
}
