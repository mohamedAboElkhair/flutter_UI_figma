import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/core/styling/app_colors.dart';
import 'package:ui_figma/features/home_page.dart/home_page_screen.dart';
import 'package:ui_figma/features/my_card/card_page_screen.dart';
import 'package:ui_figma/features/profile_page/profile_page_screen.dart';
import 'package:ui_figma/features/statistics_page/statistics_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomePageScreen(),
    StatisticsScreen(),

    Container(
      width: double.infinity,
      height: double.infinity,
      child: Text('Home Screen'),
      color: Colors.black,
    ),

    CardPageScreen(),
    ProfilePageScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[currentIndex]),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColore.primaryColor,
        unselectedItemColor: AppColore.greyColor,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.sp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_history, size: 30.sp),
            label: 'Statistics',
          ),

          BottomNavigationBarItem(
            icon: Container(
              width: 48.w,
              height: 48.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColore.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white, size: 30.sp),
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard, size: 30.sp),
            label: 'my Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30.sp),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
