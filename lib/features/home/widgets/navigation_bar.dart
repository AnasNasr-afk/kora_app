import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kora_app/core/themes/color_manager.dart';
import 'package:kora_app/core/themes/text_styles.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorManager.backgroundColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: ColorManager.tealBlue,
          width: 1.w,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            imageIcon: 'assets/images/homeIcon.png',
            label: 'Home',
            index: 0,
            isSelected: selectedIndex == 0,
          ),
          _buildNavItem(
            imageIcon:  'assets/images/calendarIcon.png',
            label: 'Calendar',
            index: 1,
            isSelected: selectedIndex == 1,
          ),
          _buildNavItem(
            imageIcon: 'assets/images/notificationIcon.png',
            label: 'Notifications',
            index: 2,
            isSelected: selectedIndex == 2,
          ),
          _buildNavItem(
            imageIcon: 'assets/images/userIcon.png',
            label: 'Settings',
            index: 3,
            isSelected: selectedIndex == 3,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String imageIcon,
    String? label,
    required int index,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imageIcon,
           color: isSelected ? ColorManager.tealBlue : ColorManager.darkGreen,
           fit: BoxFit.contain,
            width: 26.w,
            height: 26.h,
          ),
          const SizedBox(height: 4),
          isSelected ? Text(
            label!,
            style: TextStyles.font12TealBlueSemiBold,
          ) : SizedBox(),
        ],
      ),
    );
  }
}
