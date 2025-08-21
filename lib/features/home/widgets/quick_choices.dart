import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/text_styles.dart';

class QuickChoices extends StatelessWidget {
  const QuickChoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('quick_choices'.tr(), style: TextStyles.font16DarkWhiteMedium),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 105.w,
                height: 70.h,
                decoration: BoxDecoration(
                  gradient: ColorManager.mainGradient,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: ColorManager.primaryColor,
                    width: 1.5.w,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/favouritesIcon.png',
                      height: 40.h,
                      width: 40.w,
                    ),
                    Text(
                      'favourite_courts'.tr(),
                      style: TextStyles.font10tealBlueSemiBold,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.w),
            InkWell(
              onTap: (){},
              child: Container(
                width: 105.w,
                height: 70.h,
                decoration: BoxDecoration(
                  gradient: ColorManager.mainGradient,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: ColorManager.primaryColor,
                    width: 1.5.w,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/cameraIcon.png',
                      height: 40.h,
                      width: 40.w,
                    ),
                    Text(
                      'photos_from_games'.tr(),
                      style: TextStyles.font10tealBlueSemiBold,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.w),
            InkWell(
              onTap: (){},
              child: Container(
                width: 105.w,
                height: 70.h,
                decoration: BoxDecoration(
                  gradient: ColorManager.mainGradient,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: ColorManager.primaryColor,
                    width: 1.5.w,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/questionMarkIcon.png',
                      height: 40.h,
                      width: 40.w,
                    ),
                    Text(
                      'customer_support'.tr(),
                      style: TextStyles.font10tealBlueSemiBold,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
