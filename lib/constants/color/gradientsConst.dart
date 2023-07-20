import 'package:flutter/material.dart';

class AppColors {
  static  Gradient primaryGradient = LinearGradient(
    colors: [
      const Color(0xFF000000).withOpacity(0.0), // Replace with your desired colors
      const Color(0xFF202538),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: const [0.0, 0.6],
    tileMode: TileMode.clamp,
  );
}
