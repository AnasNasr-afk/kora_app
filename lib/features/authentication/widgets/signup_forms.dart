import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/widgets/app_text_form_field.dart';

class SignupForms extends StatelessWidget {
  const SignupForms({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        AppTextFormField(
          hintText: "full_name".tr(),
          validator: (value) {},
        ),
        SizedBox(height: 16.h),
        AppTextFormField(
          hintText: "email_address".tr(),
          inputType: TextInputType.emailAddress,
          validator: (value) {},
        ),
        SizedBox(height: 16.h),
        AppTextFormField(
          hintText: "phone_number".tr(),
          inputType: TextInputType.phone,
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
        SizedBox(height: 16.h),
        AppTextFormField(
          hintText: "password_confirmation".tr(),
          validator: (value) {},
          isObscureText: true,
          suffixIcon: Icon(
            Icons.lock_outline,
            color: ColorManager.darkGreen,
            size: 20.sp,
          ),
        ),
      ],
    );
  }
}
