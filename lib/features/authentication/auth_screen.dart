import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kora_app/core/themes/color_manager.dart';
import 'package:kora_app/features/authentication/cubit/auth_cubit.dart';
import 'package:kora_app/core/widgets/app_logo.dart';
import 'package:kora_app/features/authentication/widgets/email_password_form.dart';
import 'package:kora_app/features/authentication/widgets/login_buttons.dart';
import 'package:kora_app/features/authentication/widgets/signup_forms.dart';

import '../../core/themes/text_styles.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {


  @override
  Widget build(BuildContext context) {
    var cubit = AuthCubit.get(context);
    return Scaffold(
      backgroundColor: ColorManager.backgroundColor,
      appBar: AppBar(
       actions: [
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: 20.w),
           child: IconButton(
             icon: Icon(Icons.language,
                 color: ColorManager.tealBlue
             ),
             onPressed: () {
               if (context.locale.languageCode == 'ar') {
                 context.setLocale(Locale('en'));
               } else {
                 context.setLocale(Locale('ar'));
               }
             },
           ),
         ),
       ],
        backgroundColor: ColorManager.backgroundColor,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppLogo(
                width: 180.w,
                height: 75.h,
              ),
              SizedBox(height: 60.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            cubit.hasAccount = false; // Switch to Sign Up mode
                          });
                        },
                        child: Text(
                          "create_account".tr(),
                          style: TextStyles.font14TealBlueSemiBold,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        width: 150.w,
                        height: 1.h,
                        color: cubit.hasAccount
                            ? Colors.transparent
                            : ColorManager.tealBlue,
                      ),
                    ],
                  ),
                  SizedBox(width: 30.w),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            cubit.hasAccount = true;
                          });
                        },
                        child: Text(
                          "have_account".tr(),
                          style: TextStyles.font14TealBlueSemiBold,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        width: 150.w,
                        height: 1.h,
                        color: cubit.hasAccount
                            ? ColorManager.tealBlue
                            : Colors.transparent,
                      ),
                    ],
                  ),
                ],
              ),
          
              SizedBox(height: 25.h),
          
              cubit.hasAccount
                  ? EmailPasswordForm()
                  : SignupForms(),
          
              SizedBox(height: 16.h),
          
              LoginButtons(),
          
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
