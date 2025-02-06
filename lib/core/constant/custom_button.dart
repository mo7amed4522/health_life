// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmitButton1 extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const SubmitButton1({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.inversePrimary,
              Theme.of(context).colorScheme.onInverseSurface,
            ],
          ),
        ),
        child: Center(
          child: Text(title,
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Theme.of(context).primaryColor,
              )),
        ),
      ),
    );
  }
}
