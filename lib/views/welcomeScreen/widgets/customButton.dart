import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/color/colorConst.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.img, required this.text, this.bgColor, this.fgColor,
  });
  final String? img;
  final String text;
  final Color? bgColor, fgColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 46.h,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: appWhiteColor1,
            foregroundColor: appLoginBtnTextColor),
          icon: Image.asset(
            img!,
            width: 24.w,
            height: 24.h,
          ),
          onPressed: () {},
          label: Text(text,style: TextStyle(fontSize: 18.sp),)),
    );
  }
}