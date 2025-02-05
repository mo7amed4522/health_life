import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:health_life/core/middleware/my_middleware.dart';
import 'package:health_life/core/router/route.dart';
import 'package:health_life/views/screen/introduction_screens/introduction_screen.dart';
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
  ),
];