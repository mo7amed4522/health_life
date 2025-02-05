// ignore_for_file: file_names
import 'package:get/get.dart';
import 'package:health_life/core/assets/app_assets.dart';

class IntroductionModel{
  final String? title;
  final String? image;
  final String? body;
  IntroductionModel({this.title,this.image,this.body});
}

List<IntroductionModel> introductionModelList = [
  IntroductionModel(
    title: "title1".tr,
    body: "body1".tr,
    image: AppPhotoLink.accessImage,
    ),
  IntroductionModel(
    title: "title2".tr,
    body: "body2".tr,
    image: AppPhotoLink.searchImage,
    ),
  IntroductionModel(
    title: "title3".tr,
    body: "body3".tr,
    image: AppPhotoLink.mangeImage,
    ),
];