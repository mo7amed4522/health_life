// ignore_for_file: equal_keys_in_map

import 'package:get/get.dart';

class MyTranslation implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "app_name":"Health Life",
          "start_text":"حياه صحية جديدة",
          // Page One Intro
          "title1":"الصفحة الاولي",
          "body1":"مرحبًا بكم في HealthLife! لنبدأ رحلتك نحو صحة أفضل.",
          // Page TWO Intro
          "title2":"الصفحة الثانية",
          "body2":"تتبع خطواتك اليومية، ومراقبة معدل ضربات القلب، وتحديد أهداف اللياقة البدنية.",
          // Page THREE Intro
          "title3":"الصفحة الثالثة",
          "body3":"نحن بحاجة إلى الوصول إلى موقعك لتتبع أنشطتك الخارجية",
        },
        "en":{
          "app_name":"Health Life",
          "start_text":"Helty Life",
          // Page One Intro
          "title1":"Page One",
          "body1":"Welcome to HealthLife! Let's get started on your journey to better health.",
          // Page TWO Intro
          "title2":"Page Two",
          "body2":"Track your daily steps, monitor your heart rate, and set fitness goals.",
          // Page THREE Intro
          "title3":"Page Threee",
          "body3":"We need access to your location to track your outdoor activities",
        }
  };
}