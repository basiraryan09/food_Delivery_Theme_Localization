import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_theme_local/constants/color/colorConst.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      displayLarge: GoogleFonts.vazirmatn(
        fontSize: 37,
        letterSpacing: 0.1,
        fontWeight: FontWeight.bold,
        color: appWhiteColor1),
      displayMedium: GoogleFonts.vazirmatn(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black),
      displaySmall: GoogleFonts.lato(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14.sp),
      headlineMedium: GoogleFonts.lato(
        color: Colors.black, fontWeight: FontWeight.normal, fontSize: 11.sp),
      headlineSmall: GoogleFonts.lato(
        color: appGreyColor3, fontWeight: FontWeight.w500, fontSize: 10.sp),
      titleLarge: GoogleFonts.lato(
        color: appGreyColor2, fontWeight: FontWeight.bold, fontSize: 16.sp),
    bodyLarge: GoogleFonts.vazirmatn(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black87),
      bodyMedium: GoogleFonts.vazirmatn(
        fontSize: 12, fontWeight: FontWeight.w300, color: appGreyColor1),
    titleMedium: GoogleFonts.lato(
      color: appGreyColor2,
      fontSize: 16.sp,
      fontWeight: FontWeight.bold
    ),
      titleSmall: GoogleFonts.lato(
      fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white
    ),
      labelLarge: GoogleFonts.lato(
      fontSize: 24.sp, color: Colors.black, fontWeight: FontWeight.w700
    )
  );

  static TextTheme darkTextTheme = TextTheme(
      displayLarge: GoogleFonts.vazirmatn(
        fontSize: 37,
        letterSpacing: 0.1,
        fontWeight: FontWeight.bold,
        color: appWhiteColor1),
    bodyLarge: GoogleFonts.vazirmatn(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: appLoginScreenBodyText),
      bodyMedium: GoogleFonts.vazirmatn(
        fontSize: 12.sp, fontWeight: FontWeight.w300, color: appWhiteColor1),
      displayMedium: GoogleFonts.vazirmatn(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: appLightGreenColor),
      displaySmall: GoogleFonts.lato(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.sp),
      headlineMedium: GoogleFonts.lato(
        color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11.sp),
      headlineSmall: GoogleFonts.lato(
        color: appGreyColor3, fontWeight: FontWeight.w500, fontSize: 10.sp),
      titleLarge: GoogleFonts.lato(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.sp),
      titleMedium: GoogleFonts.lato(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold
      ),
      titleSmall: GoogleFonts.lato(
          fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white
      ),
      labelLarge: GoogleFonts.lato(
          fontSize: 24.sp, color: Colors.white, fontWeight: FontWeight.w700
      )
  );
}
