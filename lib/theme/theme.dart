import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData ourTheme = ThemeData(
  fontFamily: "Poppins",
  primaryColor: primaryColor,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedLabelStyle: bottomNavBarLabelStyle,
    unselectedLabelStyle: bottomNavBarLabelStyle,
    type: BottomNavigationBarType.fixed,
    backgroundColor: lightGreyColor,
    selectedItemColor: primaryColor,
    unselectedItemColor: darkGreyColor,
    selectedIconTheme: IconThemeData(color: primaryColor),
    showUnselectedLabels: true,
  ),
);
