import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../constants/color/colorConst.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.isDarkColor,
  });

  final bool isDarkColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: isDarkColor ? appDarkSearchBoxColor : appWhiteColor2,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.cartText,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              height: 10.h,
            ),

            /// --Price Text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.priceText,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                // SizedBox(
                //   width: 5.w,
                // ),
                DottedDashedLine(
                    dashColor: isDarkColor ? Colors.white : Colors.black,
                    height: 0,
                    width: 200,
                    axis: Axis.horizontal),
                SizedBox(
                  width: 5.w,
                ),
                const Text(
                  '\$375',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),

            /// --Delivery Text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.deliveryText,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                // SizedBox(
                //   width: 5.w,
                // ),
                DottedDashedLine(
                    dashColor: isDarkColor ? Colors.white : Colors.black,
                    height: 0,
                    width: 160,
                    axis: Axis.horizontal),
                // SizedBox(
                //   width: 5.w,
                // ),
                const Text(
                  '\$75',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 25.h,
            ),

            /// --Total Order
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.totalOrderText,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                // SizedBox(
                //   width: 5.w,
                // ),
                DottedDashedLine(
                    height: 0,
                    width: 80.w,
                    dashColor: isDarkColor ? Colors.white : Colors.black,
                    axis: Axis.horizontal),
                // SizedBox(
                //   width: 5.w,
                // ),
                Text(
                  '\$450',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 46.h,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(foregroundColor: Colors.black),
                  onPressed: () {},
                  child: Text(
                    AppLocalizations.of(context)!.nextBtn,
                    style: TextStyle(fontSize: 16.sp),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
