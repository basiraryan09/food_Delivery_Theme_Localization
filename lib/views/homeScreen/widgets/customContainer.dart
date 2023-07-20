import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_theme_local/constants/color/colorConst.dart';

class Containers extends StatelessWidget {
  Containers({
    required this.text,
    this.img,
    required this.isSelected,
  });

  final String? img;
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    /// --Container Color
    Color getContainerColor(BuildContext context, bool isSelected) {
      final isDarkMode = Theme.of(context).brightness == Brightness.dark;
      final selectedColor = isDarkMode ? appDarkGreenColor : appLightGreenColor;
      final defaultColor = isDarkMode ? appDarkSearchBoxColor : appWhiteColor2;

      return isSelected ? selectedColor : defaultColor;
    }
    /// --Text Style Theme Based
    TextStyle getContainerTextStyle(Color color, bool isSelected, bool isDarkTheme) {
      Color textColor;
      FontWeight fontWeight;

      if (isSelected) {
        textColor = isDarkTheme ? appCategoryTextDarkColor : appWhiteColor1;
        fontWeight = FontWeight.bold;
      } else {
        textColor = isDarkTheme ? Colors.white70 : appGreyColor2;
        fontWeight = FontWeight.normal;
      }

      return TextStyle(
        color: textColor,
        fontWeight: fontWeight,
        // Add any other desired text style properties
      );
    }
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    final containerColor = getContainerColor(context, isSelected);
    final textStyle = getContainerTextStyle(containerColor, isSelected, isDarkTheme);

    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(500),
      ),
      margin: const EdgeInsets.all(8.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (img != null) Image.asset(img!),
              if (img != null) SizedBox(width: 10.w),
              Text(text, style: textStyle,),
            ],
          ),
        ),
      ),
    );
  }
}


