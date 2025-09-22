import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/core/styling/app_colors.dart';
import 'package:ui_figma/core/styling/app_styles.dart';
import 'package:ui_figma/widgets/space_widgets.dart.dart';

class CustomHomePageWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String description;
  const CustomHomePageWidget({
    super.key,
    required this.iconData,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE3E9ED), width: 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffECF1F6),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Icon(iconData, size: 20.sp, color: AppColore.primaryColor),
            ),
            HightSpaceWidgets(height: 12),
            Text(title, style: AppStyles.black15BoldStyle),
            HightSpaceWidgets(height: 8),
            Text(description, style: AppStyles.grey12MediumStyle),
          ],
        ),
      ),
    );
  }
}
