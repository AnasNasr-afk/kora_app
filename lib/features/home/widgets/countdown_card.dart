import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/text_styles.dart';

class CountdownCard extends StatelessWidget {
  final CountDownController controller = CountDownController();

  CountdownCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.w,
      height: 115.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        gradient: ColorManager.mainGradient,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: ColorManager.primaryColor,
          width: 1.5.w,
        ),
      ),
      child: Row(
        children: [
          /// Left Side (Countdown Timer Section)
          Container(
            width: 190.w,
            height: 74.h,
            decoration: BoxDecoration(
              gradient: ColorManager.mainGradient,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: ColorManager.primaryColor,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.w, 4.h, 8.w, 4.h),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircularCountDownTimer(
                        duration: 15,
                        initialDuration: 0,
                        width: 47.w,
                        height: 47.h,
                        ringColor: ColorManager.semiDarkGreen,
                        fillColor: ColorManager.darkGreen,
                        strokeWidth: 6,
                        strokeCap: StrokeCap.round,
                        isReverse: false,
                        isTimerTextShown: false,
                      ),
                      Text("21:00", style: TextStyles.font10TealBlueSemiBold),
                    ],
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center, // use start for LTR/RTL
                      children: [
                        CountdownTimer(
                          endTime: DateTime.now().millisecondsSinceEpoch +
                              1000 * 3600 * 24, // 24h
                          textStyle: TextStyle(
                            color: Colors.tealAccent,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          widgetBuilder: (_, time) {
                            if (time == null) {
                              return Text('انتهى الوقت!');
                            }
                            return Container(
                              width: double.infinity.w,
                              height: 45.h,
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                  color: ColorManager.primaryColor,
                                  width: 1.w,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _timeBox("${time.hours ?? 0}", "hour".tr()),
                                    SizedBox(width: 8.w),
                                    _timeBox("${time.min ?? 0}", "min".tr()),
                                    SizedBox(width: 8.w),
                                    _timeBox("${time.sec ?? 0}", "sec".tr()),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          'game_time_start'.tr(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.font9DarkWhiteSemiBold,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Spacer(),

          /// Right Side (Match Info Section)
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    'MAL3AB GOAL',
                    style: TextStyles.font12DarkWhiteSemiBold,
                  ),
                  SizedBox(width: 5.w),
                  Image.asset(
                    "assets/images/footballCourtIcon.png",
                    height: 14.h,
                    width: 14.w,
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Text(
                    'Joined',
                    style: TextStyles.font12DarkWhiteSemiBold,
                  ),
                  SizedBox(width: 5.w),
                  Image.asset(
                    "assets/images/playerJoinedIcon.png",
                    height: 14.h,
                    width: 14.w,
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Text(
                    '9/10',
                    style: TextStyles.font12DarkWhiteSemiBold,
                  ),
                  SizedBox(width: 5.w),
                  Image.asset(
                    "assets/images/playerIcon.png",
                    height: 14.h,
                    width: 14.w,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _timeBox(String value, String label) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
      child: Column(
        children: [
          Text(value, style: TextStyles.font14TealBlueSemiBold),
          Text(label, style: TextStyles.font12DarkWhiteSemiBold),
        ],
      ),
    );
  }
}
