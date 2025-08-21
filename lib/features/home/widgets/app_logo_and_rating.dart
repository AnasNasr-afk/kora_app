import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/widgets/app_logo.dart';

class AppLogoAndRating extends StatelessWidget {
  const AppLogoAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppLogo(height: 50.h, width: 120.w),
        const Spacer(),
        Container(
        height: 40.h, width: 100.w,
          padding: EdgeInsets.symmetric(
            horizontal: 4.w,
            vertical: 4.h,
          ),
          decoration: BoxDecoration(
            gradient: ColorManager.mainGradient,
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 27.h,
                width: 44.w,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorManager.tealBlue),
                  borderRadius: BorderRadius.circular(6.r),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: ColorManager.tealBlue,
                      size: 17.sp,
                    ),
                    Text(
                      "42",
                      style: TextStyle(
                        color: ColorManager.tealBlue,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 12.w),
              Icon(
                Icons.person,
                color: ColorManager.tealBlue,
                size: 22.sp,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
