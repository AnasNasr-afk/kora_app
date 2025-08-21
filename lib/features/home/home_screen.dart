import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kora_app/features/home/widgets/app_logo_and_rating.dart';
import 'package:kora_app/features/home/widgets/countdown_card.dart';
import 'package:kora_app/features/home/widgets/join_book_buttons.dart';
import 'package:kora_app/features/home/widgets/nearby_court_cards.dart';
import 'package:kora_app/features/home/widgets/quick_choices.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //APP LOGO AND RATING
                AppLogoAndRating(),

                SizedBox(height: 15.h),
                // JoinBookButtons
                JoinBookButtons(),

                SizedBox(height: 15.h),
                ///COUNTDOWN CARD AND GAME QUICK INFO

                CountdownCard(),

                SizedBox(height: 15.h),
                QuickChoices(),
                SizedBox(height: 15.h),
                NearbyCourtCards()
              ],
            ),
          ),
        ),
    );
  }
}
