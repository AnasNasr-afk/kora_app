import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/widgets/app_text_form_field.dart';

class EmailPasswordForm extends StatelessWidget {
  const EmailPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: "email_address".tr(),
          validator: (value) {},
        ),
        SizedBox(height: 16.h),
        AppTextFormField(
          hintText: "password".tr(),
          validator: (value) {},
          isObscureText: true,
          suffixIcon: Icon(
            Icons.lock_outline,
            color: ColorManager.darkGreen,
            size: 20.sp,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Text(
                  "forget_password".tr(),
                  style: TextStyles.font12DarkWhiteSemiBold,
                ),
              ),
              Container(
                width: 110.w,
                height: 1.h,
                color: ColorManager.darkWhite,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
