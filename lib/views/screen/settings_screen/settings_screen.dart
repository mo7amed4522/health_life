import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "setting".tr,
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 15.sp,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
