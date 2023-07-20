import 'package:flutter/material.dart';
import 'package:food_delivery_theme_local/utils/theme/widgetTheme/elevatedButtonTheme.dart';
import 'package:food_delivery_theme_local/utils/theme/widgetTheme/textTheme.dart';


class AppTheme {

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
   // outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    //inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );


  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,

  );
}
