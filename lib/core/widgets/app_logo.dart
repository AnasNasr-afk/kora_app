import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double height;
  final double width;
  const AppLogo({super.key,
    required this.height,
    required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('assets/images/logo.png'
            )
        ),
      ),
    );
  }
}
