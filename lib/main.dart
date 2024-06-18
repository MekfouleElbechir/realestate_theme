import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:realestate/Theme/theme.dart';
import 'package:realestate/Theme/themecontroller.dart';
import 'package:realestate/Translation/stringtranslation.dart';
import 'Pages/Authentication/Onboading/screen_one.dart';

void main() {

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final themedata = Get.put(Themecontroler());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themedata.isdark ? MyThemes.darkTheme : MyThemes.lightTheme,
        fallbackLocale: const Locale('en', 'US'),
        translations: Apptranslation(),
        locale: const Locale('en', 'US'),
        home: const ScreenOne()
    );
  }
}
