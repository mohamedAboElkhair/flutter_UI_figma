import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/core/styling/app_assets.dart';
import 'package:ui_figma/core/styling/app_colors.dart';
import 'package:ui_figma/core/styling/app_styles.dart';
import 'package:ui_figma/widgets/space_widgets.dart.dart';

class TopProfileNotification extends StatelessWidget {
  const TopProfileNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                AppAssets.profile,
                width: 48.w,
                height: 48.w,
                fit: BoxFit.fill,
              ),
            ),
            WidthSpaceWidgets(width: 11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back,',
                  style: AppStyles.grey12MediumStyle.copyWith(
                    fontSize: 15.sp,
                    color: Color(0xff6A707C),
                  ),
                ),
                HightSpaceWidgets(height: 2),
                Text('Mohamed AbouElkhair', style: AppStyles.black18BoldStyle),
              ],
            ),
          ],
        ),
        Container(
          width: 48.w,
          height: 48.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffF6F8FB),
            shape: BoxShape.circle,
            border: Border.all(color: AppColore.greyColor),
          ),
          child: Icon(
            Icons.notifications,
            size: 24.sp,
            color: AppColore.primaryColor,
          ),
        ),
      ],
    );
  }
}
