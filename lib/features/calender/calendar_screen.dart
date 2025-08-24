import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kora_app/core/themes/color_manager.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../core/themes/text_styles.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalendarScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// 🔘 Today Button
              GestureDetector(
                onTap: () {
                  setState(() {
                    _focusedDay = DateTime.now();
                  });
                },
                child: Container(
                  height: 35.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                    gradient: ColorManager.mainGradient,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: ColorManager.tealBlue),
                  ),
                  child: Center(
                    child: Text(
                      "${DateTime.now().day}",
                      style: TextStyles.font16DarkWhiteMedium,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              /// 📅 Calendar
              Container(
                height: 380.h,
                width: 380.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  gradient: ColorManager.mainGradient,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 15.h,
                  ),
                  child: TableCalendar(
                    firstDay: DateTime.utc(2020, 1, 1),
                    lastDay: DateTime.utc(2030, 12, 31),
                    focusedDay: _focusedDay,
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    },
                    calendarFormat: CalendarFormat.month,
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    daysOfWeekVisible: true,

                    /// 📌 Header Style
                    headerStyle: HeaderStyle(
                      leftChevronIcon: Icon(
                        Icons.arrow_back_ios,
                        color: ColorManager.darkWhite,
                        size: 15.sp,
                      ),
                      rightChevronIcon: Icon(
                        Icons.arrow_forward_ios,
                        color: ColorManager.darkWhite,
                        size: 15.sp,
                      ),
                      headerMargin: EdgeInsets.only(bottom: 10.h),
                      titleTextStyle: TextStyles.font18TealBlueSemiBold,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: ColorManager.tealBlue),
                        ),
                      ),
                      formatButtonVisible: false,
                      titleCentered: true,
                    ),

                    /// 📌 Days of Week Style
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyles.font12DarkWhiteSemiBold,
                      weekendStyle: TextStyles.font12DarkWhiteSemiBold,
                    ),

                    /// 📌 Calendar Style
                    calendarStyle: CalendarStyle(
                      outsideDaysVisible: false,
                      defaultTextStyle: TextStyles.font16TealBlueMedium,
                      weekendTextStyle: TextStyles.font16TealBlueMedium,
                      todayDecoration: BoxDecoration(
                        border: Border.all(color: ColorManager.tealBlue),
                        gradient: ColorManager.mainGradient,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      ),
                      todayTextStyle: TextStyles.font16DarkWhiteMedium,
                      selectedDecoration: BoxDecoration(
                        color: ColorManager.tealBlue,
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              /// 📌 Upcoming Events
              Text(
                "Upcoming Events",
                style: TextStyles.font20TealBlueBold.copyWith(
                  color: ColorManager.darkWhite,
                ),
              ),

              SizedBox(height: 20.h),

              /// 🔹 Event Rows
              _buildEventRow("Event Name", "Date & Time"),
              SizedBox(height: 20.h),
              _buildEventRow("Event Name", "Date & Time"),
              SizedBox(height: 20.h),
              _buildEventRow("Event Name", "Date & Time"),
            ],
          ),
        ),
      ),
    );
  }

  /// 🔧 Extracted Event Row Widget
  Widget _buildEventRow(String eventName, String dateTime) {
    return Container(
      width: double.infinity.w,
      height: 50.h,
      decoration: BoxDecoration(
        gradient: ColorManager.mainGradient,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              eventName,
              style: TextStyles.font16DarkWhiteMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              dateTime,
              style: TextStyles.font16DarkWhiteMedium,
            ),
          ),
        ],
      ),
    );
  }
}
