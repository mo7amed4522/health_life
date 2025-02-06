import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_life/controller/page_view_screen_controller/page_view_screen_controller.dart';
import 'package:health_life/core/assets/app_assets.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Assuming controller.diseases!.symptoms!.one! is a List

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Image.asset(
              AppPhotoLink.loginImage,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          GetBuilder<PageViewScreenControllerIMP>(
            init: PageViewScreenControllerIMP(),
            builder: (controller) => SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SafeArea(
                      child: InkWell(
                        onTap: controller.goBack,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            AppPhotoLink.backImage,
                            color: Theme.of(context).primaryColor,
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        AppPhotoLink.logoImage,
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      child: PageView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) => SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  controller.diseases!.name!,
                                  style: GoogleFonts.poppins(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: Text(
                                  controller.diseases!.description!,
                                  style: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(controller.diseases!.symptoms!.one![0]),
                              Text(controller.diseases!.symptoms!.one![1]),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
