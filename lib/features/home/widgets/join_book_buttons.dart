import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/widgets/app_text_button.dart';

class JoinBookButtons extends StatelessWidget {
  const JoinBookButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextButton(
          onPressed: () {},
          buttonStyle: ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.zero),
            backgroundColor: WidgetStatePropertyAll(
              ColorManager.primaryColor,
            ),
            minimumSize: WidgetStatePropertyAll(Size(160.w, 60.h)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
          child: Text(
            "join_now".tr(),
            style: TextStyles.font20DarkGreenBold,
          ),
        ),
        Spacer(),
        AppTextButton(
          onPressed: () {},
          gradient: ColorManager.mainGradient,
          buttonStyle: ButtonStyle(
            minimumSize: WidgetStatePropertyAll(Size(160.w, 60.h)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorManager.primaryColor,
                  width: 1.5.w,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
          child: Text(
            "book_now".tr(),
            style: TextStyles.font20TealBlueBold,
          ),
        ),
      ],
    );
  }
}
