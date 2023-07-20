import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/images/imagesConst.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: 192.h,
        width: double.infinity,
        child: Image.asset(
          appBackImg,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}