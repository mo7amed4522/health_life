// ignore_for_file: file_names, unnecessary_new, prefer_const_constructors, unused_element, invalid_use_of_protected_member, library_private_types_in_public_api, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_life/controller/customer_drawer_controller.dart/customer_drower_controller.dart';
import 'package:health_life/views/widget/home_page_screen_widget/sec_layer.dart';
import 'package:matrix4_transform/matrix4_transform.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  double xoffSet = 0;
  double yoffSet = 0;
  double angle = 0;
  bool isOpen = false;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4Transform()
          .translate(x: xoffSet, y: yoffSet)
          .rotate(angle)
          .matrix4,
      duration: Duration(milliseconds: 250),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius:
              isOpen ? BorderRadius.circular(10) : BorderRadius.circular(0),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              !isOpen
                  ? Positioned(
                      top: 10,
                      right: 20,
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              xoffSet = -150;
                              yoffSet = 80;
                              angle = 0.2;
                              isOpen = true;
                            },
                          );
                          secondLayerState!.setState(
                            () {
                              secondLayerState!.xoffSet = -122;
                              secondLayerState!.yoffSet = 110;
                              secondLayerState!.angle = 0.275;
                            },
                          );
                        },
                      ),
                    )
                  : Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () {
                          if (isOpen == true) {
                            setState(
                              () {
                                xoffSet = 0;
                                yoffSet = 0;
                                angle = 0;
                                isOpen = false;
                              },
                            );
                            secondLayerState!.setState(
                              () {
                                secondLayerState!.xoffSet = 0;
                                secondLayerState!.yoffSet = 0;
                                secondLayerState!.angle = 0;
                              },
                            );
                          }
                        },
                      ),
                    ),
              GetBuilder<CustomerDrawerControllerIMP>(
                init: CustomerDrawerControllerIMP(),
                builder: (controller) =>
                    controller.screen[controller.currentIndex],
              )
              // HomePageScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
