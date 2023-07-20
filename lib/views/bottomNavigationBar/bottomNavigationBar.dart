import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_theme_local/constants/color/colorConst.dart';
import 'package:food_delivery_theme_local/constants/images/imagesConst.dart';
import 'package:food_delivery_theme_local/views/emptyScreen/emptyScreen.dart';
import '../homeScreen/homeScreen.dart';
import '../orderScreen/orderScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  final List<Widget> bottomBarPages = [
    const EmptyScreen(),
    const HomeScreen(),
    const OrderScreen()
  ];


  // State class
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey =
  GlobalKey();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    Color getActiveColor(int index) {
      return currentPage == index
          ? (isDarkMode ? appDarkBGColor : appWhiteColor1)
          : (isDarkMode ? appWhiteColor1 : appGreyColor1);
    }

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: isDarkMode ? const Color(0xff161E3D) : const Color(0xffffffff),
        backgroundColor: isDarkMode ? appDarkBGColor : const Color(0xffF3F3F3),
        buttonBackgroundColor:
        isDarkMode ? appDarkGreenColor : appDeepGreenColor,
        index: currentPage,
        key: _bottomNavigationKey,
        items: <Widget>[
          Image.asset(appProfileVector,
              height: 24.h,
              width: 24.w,
              color: getActiveColor(0)),
          Image.asset(appHomeVector,
              height: 24.h,
              width: 24.w,
              color: getActiveColor(1)),
          Image.asset(appDashboardVector,
              height: 24.h,
              width: 24.w,
              color: getActiveColor(2)),
        ],
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
      body: bottomBarPages[currentPage],
    );
  }
}
