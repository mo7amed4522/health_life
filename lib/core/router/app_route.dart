import 'package:get/get.dart';
import 'package:health_life/core/constant/custom_translate.dart';
import 'package:health_life/core/middleware/my_middleware.dart';
import 'package:health_life/core/router/route.dart';
import 'package:health_life/views/screen/info_screen/info_screens.dart';
import 'package:health_life/views/screen/introduction_screens/introduction_screen.dart';
import 'package:health_life/views/screen/login_pwd_screen/login_pwd_screen.dart';
import 'package:health_life/views/screen/login_screen/login_screen.dart';
import 'package:health_life/views/screen/page_view_screen/page_view_screen.dart';
import 'package:health_life/views/screen/register_screen/register_screen.dart';
import 'package:health_life/views/screen/start_screen/start_screen.dart';

List<GetPage<dynamic>>? routes = [
  //================= Start Screen =============//
  GetPage(
    name: AppRoutes.startScreen,
    page: () => const StartScreen(),
    middlewares: [MyMiddleWare()],
  ),
  //================= INTRO Screen =============//
  GetPage(
    name: AppRoutes.introPage,
    page: () => const IntroductionScreen(),

    //customTransition:
  ),
  //================= Auth Screen =============//
  GetPage(
    name: AppRoutes.loginPage,
    page: () => const LoginScreen(),
    transition: Transition.leftToRightWithFade, // Use custom transition
    customTransition: CustomFadeScaleTransition(), // Apply custom transition
    transitionDuration: Duration(milliseconds: 500), // Set transition duration
  ),
  GetPage(
    name: AppRoutes.loginPWDPage,
    page: () => const LoginPwdScreen(),
    transition: Transition.leftToRightWithFade, // Use custom transition
    customTransition: CustomFadeScaleTransition(), // Apply custom transition
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: AppRoutes.registerPage,
    page: () => const RegisterScreen(),
    transition: Transition.leftToRightWithFade, // Use custom transition
    customTransition: CustomFadeScaleTransition(), // Apply custom transition
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: AppRoutes.infoPage,
    page: () => const InformationScreens(),
    transition: Transition.leftToRightWithFade, // Use custom transition
    customTransition: CustomFadeScaleTransition(), // Apply custom transition
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: AppRoutes.pageViewPage,
    page: () => const PageViewScreen(),
    transition: Transition.leftToRightWithFade, // Use custom transition
    customTransition: CustomFadeScaleTransition(), // Apply custom transition
    transitionDuration: Duration(milliseconds: 500),
  ),
];
