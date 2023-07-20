
import 'package:flutter/material.dart';
import 'package:food_delivery_theme_local/constants/color/colorConst.dart';

class AppElevatedButtonTheme {

  AppElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        foregroundColor: appLoginBtnTextColor,
        backgroundColor: appLightGreenColor,
        elevation: 0,
        //side: BorderSide(color: appSecondaryColor),
        //padding: EdgeInsets.symmetric(vertical: appButtonHeight)
    ),
  );



  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        foregroundColor: appLoginBtnTextColor,
        backgroundColor: appDarkGreenColor,
        elevation: 0,
    ),
  );

}