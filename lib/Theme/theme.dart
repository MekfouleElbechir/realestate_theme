
import 'package:flutter/material.dart';
import 'package:realestate/Common%20class/color.dart';
import 'package:realestate/Common%20class/fontstyle.dart';


class MyThemes {
  static final lightTheme = ThemeData(

    primaryColor: RealestateColor.darkgreen,
    primarySwatch: RealestateColor.blue,
    textTheme: const TextTheme(),
    fontFamily: 'LatoRegular',
    scaffoldBackgroundColor: RealestateColor.white,
    appBarTheme: AppBarTheme(
      iconTheme:  const IconThemeData(color: RealestateColor.darkblack),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: lmedium.copyWith(
        color: RealestateColor.darkblack,
        fontSize: 20,
      ),
      color: RealestateColor.transparent,
    ),
  );

  static final darkTheme = ThemeData(

    fontFamily: 'LatoRegular',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: RealestateColor.black,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: RealestateColor.white),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: lmedium.copyWith(
        color: RealestateColor.white,
        fontSize: 18,
      ),
      color: RealestateColor.transparent,
    ),
  );
}