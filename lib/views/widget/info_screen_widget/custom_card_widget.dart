// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomCardWidget extends StatelessWidget {
  final String data;
  final VoidCallback onTap;
  const CustomCardWidget({super.key, required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(16.sp),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Theme.of(context).colorScheme.error.withOpacity(0.2),
                offset: Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 20.sp,
              ),
              Text(
                data,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
