import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/color/colorConst.dart';
import '../../../../constants/images/imagesConst.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key, required this.title, required this.rating, required this.description, required this.priceTag,
  });
  final String title;
  final String rating;
  final String description;
  final String priceTag;


  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkColor = brightness == Brightness.dark;
    return Container(
      width: 160.w,
      height: 200.h,
      decoration: BoxDecoration(
        color: isDarkColor ? appDarkSearchBoxColor : Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 60,
              color: const Color(0xff393939).withOpacity(.10),
              offset: const Offset(0, 30)
          )
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 80.h,),
                /// --First Line TExt
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.headline3),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellowAccent,size: 16.r,),
                        Text(rating, style: Theme.of(context).textTheme.headline4)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20.h,),
                /// --Description Text
                Text(description, style: Theme.of(context).textTheme.headline5),
                SizedBox(height: 20.h,),


              ],
            ),
            /// --Price and Cart Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(priceTag, style: Theme.of(context).textTheme.headline6),
                Container(
                  width: 56.w,
                  height: 36.h,
                  decoration: const BoxDecoration(
                      color: appLightGreenColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomRight: Radius.circular(16))
                  ),
                  child: Image.asset(appCartIcon, width: 23.w,height: 20.h,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}