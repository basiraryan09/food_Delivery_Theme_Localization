

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color/colorConst.dart';

class MyTextStyles {
  static const TextStyle noAccount1 = TextStyle(
      color: appWhiteColor1,
      fontSize: 15,
      fontWeight: FontWeight.bold);
  static const TextStyle noAccount2 = TextStyle(
    color: appLightGreenColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static  TextStyle categoryNameStyle = GoogleFonts.lato(
    color: appLightGreenColor,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static TextStyle categoryTitle = GoogleFonts.lato(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14.sp
  );
  static TextStyle starText = GoogleFonts.lato(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 11.sp
  );
  static TextStyle descriptionText = GoogleFonts.lato(
      color: appGreyColor3,
      fontWeight: FontWeight.w500,
      fontSize: 10.sp
  );
  static TextStyle priceText = GoogleFonts.lato(
      color: appGreyColor2,
      fontWeight: FontWeight.bold,
      fontSize: 16.sp
  );

// Add more styles as needed...
}
