import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/core/styling/app_assets.dart';
import 'package:ui_figma/core/styling/app_colors.dart';
import 'package:ui_figma/core/styling/app_styles.dart';
import 'package:ui_figma/features/home_page.dart/widgets/carousel_widget.dart';
import 'package:ui_figma/features/home_page.dart/widgets/top_profile_notification.dart';
import 'package:ui_figma/widgets/space_widgets.dart.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          HightSpaceWidgets(height: 18),
          TopProfileNotification(),

          HightSpaceWidgets(height: 27),
          CarouselWidget(),
        ],
      ),
    );
  }
}
