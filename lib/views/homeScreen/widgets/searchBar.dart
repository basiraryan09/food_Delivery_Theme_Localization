import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/color/colorConst.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.isDarkColor,
  });

  final bool isDarkColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color:
          (isDarkColor ? appDarkSearchBoxColor : appWhiteColor2)),
      child: const Padding(
        padding: EdgeInsets.only(left: 8.0, top: 10),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none, icon: Icon(Icons.search)),
        ),
      ),
    );
  }
}
