import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData ourTheme = ThemeData(
  fontFamily: "Poppins",
  primaryColor: primaryColor,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  textTheme: TextTheme(
      // headline1: TextStyle(
      //   color: Colors.black,
      // ),
      ),
  appBarTheme: AppBarTheme(
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedLabelStyle: bottomNavBarLabelStyle,
    unselectedLabelStyle: bottomNavBarLabelStyle,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Color(0xFFF6F6F6),
    selectedItemColor: primaryColor,
    unselectedItemColor: darkGreyColor,
    selectedIconTheme: IconThemeData(color: primaryColor),
    showUnselectedLabels: true,
  ),
);
