import 'dart:ui';

import 'package:flutter/material.dart';

class ColorManager {
  static const Color backgroundColor = Color(0xFF02171C);
  static const Color primaryColor = Color(0xFF31A1A9);
  static const Color tealBlue = Color(0xFF4CBDC4);
  static const Color lightBlue = Color(0xFF85D8DB);
  static const Color darkGreen = Color(0xFF264B53);
  static const Color darkWhite = Color(0xFFF0FBFB);
  static const Color semiDarkGreen = Color(0xFF477375);

  ///Gradient Colors
  static const Color startGradient = Color(0x20477375);
  static const Color endGradient = Color(0x4085D8DB);
  static const LinearGradient mainGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      startGradient,
      endGradient,
    ],
  );

}