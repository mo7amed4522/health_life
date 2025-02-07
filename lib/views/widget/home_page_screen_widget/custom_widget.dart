import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomWidgetButtons extends StatelessWidget {
  final String titleName;
  final String svgName;
  final VoidCallback onButtonTap;
  const CustomWidgetButtons({
    super.key,
    required this.titleName,
    required this.svgName,
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            svgName,
            height: 30,
            width: 30,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 15.sp),
          Text(
            titleName,
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
