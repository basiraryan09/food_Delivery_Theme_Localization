import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../constants/color/colorConst.dart';
import '../../../constants/images/imagesConst.dart';
import '../../../constants/text/textConst.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.isDarkColor,
  });

  final bool isDarkColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// --Your Location
            Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.yourLocation,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const Icon(Icons.keyboard_arrow_down, size: 17)
              ],
            ),
            /// --Current Location Text
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 14,
                  color: appOrangeColor,
                ),
                SizedBox(
                  width: 5.w,
                ),
                 Text(AppLocalizations.of(context)!.currentLocation,),
              ],
            ),
          ],
        ),
        Image.asset(
          appCartIcon,
          height: 24.h,
          width: 24.w,
          color: (isDarkColor ? appWhiteColor1 : appGreyColor2),
        ),
      ],
    );
  }
}