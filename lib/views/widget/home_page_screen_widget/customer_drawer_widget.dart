// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:health_life/views/widget/home_page_screen_widget/first_layer.dart';
import 'package:health_life/views/widget/home_page_screen_widget/home_page_widget_layer.dart';
import 'package:health_life/views/widget/home_page_screen_widget/sec_layer.dart';
import 'package:health_life/views/widget/home_page_screen_widget/thired_layer.dart';

class CustomDraw extends StatelessWidget {
  const CustomDraw({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        //backgroundColor: Theme.of(context).colorScheme.background,
        body: Stack(
          children: [
            FirstLayer(),
            SecondLayer(),
            ThierdPage(),
            HomePage(),
          ],
        ),
      ),
    );
  }
}
