import 'package:flutter/material.dart';

import '../../constants/color/colorConst.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkColor = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkColor ? appDarkBGColor : const Color(0xffF3F3F3),
    );
  }
}
