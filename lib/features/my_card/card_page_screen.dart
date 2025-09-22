import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/core/styling/app_styles.dart';
import 'package:ui_figma/features/nav/widgets/icon_nav_widget.dart';
import 'package:ui_figma/widgets/space_widgets.dart.dart';

class CardPageScreen extends StatefulWidget {
  const CardPageScreen({super.key});

  @override
  State<CardPageScreen> createState() => _CardPageScreenState();
}

class _CardPageScreenState extends State<CardPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HightSpaceWidgets(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconNavWidget(),
              Text('All Card', style: AppStyles.black18BoldStyle),
              Icon(Icons.add, size: 30.sp),
            ],
          ),
          HightSpaceWidgets(height: 27),

          Text('Card Page Screen'),
        ],
      ),
    );
  }
}
