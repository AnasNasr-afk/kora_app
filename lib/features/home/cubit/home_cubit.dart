import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kora_app/features/calender/calender_screen.dart';
import 'package:kora_app/features/notifications/notifications_screen.dart';
import 'package:kora_app/features/settings/settings_screen.dart';

import '../home_screen.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int selectedIndex = 0;


  final List<Widget> screens = [
    HomeScreen(),
    CalenderScreen(),
    NotificationsScreen(),
    SettingsScreen(),
  ];

  void changeIndex(int index) {
    selectedIndex = index;
    emit(HomeChangeNavBarState());
  }
}
