import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kora_app/core/themes/color_manager.dart';

import '../cubit/home_cubit.dart';
import '../cubit/home_states.dart';
import '../widgets/navigation_bar.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);

        return Scaffold(
          backgroundColor: ColorManager.backgroundColor,
          bottomNavigationBar: CustomNavBar(
            selectedIndex: cubit.selectedIndex,
            onItemTapped: cubit.changeIndex,
          ),
          body: cubit.screens[cubit.selectedIndex],
        );
      },
    );
  }
}
