import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/text_styles.dart';

class NearbyCourtCards extends StatelessWidget {
  const NearbyCourtCards({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> courts = [
      {
        "name": "ملعب النصر - المعادي",
        "image": "assets/images/Court1.jpg",
        "price": "200 EGP/Hour",
        "rating": "4.2",
        "reviews": "218",
      },
      {
        "name": "ملعب النصر - المعادي",
        "image": "assets/images/Court1.jpg",
        "price": "300 EGP/Hour",
        "rating": "4.5",
        "reviews": "340",
      },
      {
        "name": "ملعب النصر - المعادي",
        "image": "assets/images/Court1.jpg",
        "price": "250 EGP/Hour",
        "rating": "4.3",
        "reviews": "190",
      },
      {
        "name": "ملعب النصر - المعادي",
        "image": "assets/images/Court1.jpg",
        "price": "280 EGP/Hour",
        "rating": "4.4",
        "reviews": "220",
      },
    ];

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'nearby_courts'.tr(),
              style: TextStyles.font16DarkWhiteMedium,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.filter_alt_outlined,
                size: 25.sp,
                color: ColorManager.darkWhite,
              ),
            ),
          ],
        ),
        Container(
          width: 380.w,
          height: 230.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: ColorManager.primaryColor,
              width: 1.5.w,
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: courts.map((court) {
                return Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: SizedBox(
                    width: 140.w,
                    height: 210.h,
                    child: Card(
                      color: ColorManager.darkGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Container(
                                height: 150.h,
                                width: 110.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorManager.tealBlue,
                                    width: 1.5.w,
                                  ),
                                  borderRadius: BorderRadius.circular(12.r),
                                  image: DecorationImage(
                                    image: AssetImage(court["image"]!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              // Rating box
                              Container(
                                height: 44.h,
                                width: 32.w,
                                decoration: BoxDecoration(
                                  color: ColorManager.tealBlue,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      court["rating"]!,
                                      style: TextStyles.font10DarkWhiteBold,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: ColorManager.darkWhite,
                                      size: 10.sp,
                                    ),
                                    Text(
                                      court["reviews"]!,
                                      style: TextStyles.font8DarkWhiteBold,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            court["name"]!,
                            style: TextStyles.font12DarkWhiteBold,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            court["price"]!,
                            style: TextStyles.font10DarkWhiteBold,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
