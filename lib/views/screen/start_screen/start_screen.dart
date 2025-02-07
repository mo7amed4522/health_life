// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_life/controller/start_screen_controller/start_screen_controller.dart';
import 'package:health_life/views/widget/start_screen_widget/logo_start.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GetBuilder<StartScreenControllerIMP>(
        init: StartScreenControllerIMP(),
        builder: (controller) => Stack(
          children: [
            LogoStartWidget(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'start_text'.tr,
                  style: GoogleFonts.reemKufi(
                      fontSize: 30, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
