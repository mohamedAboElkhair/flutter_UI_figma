import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/core/styling/app_assets.dart';
import 'package:ui_figma/core/styling/app_colors.dart';
import 'package:ui_figma/core/styling/app_styles.dart';
import 'package:ui_figma/features/nav/widgets/icon_nav_widget.dart';
import 'package:ui_figma/widgets/space_widgets.dart.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
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
              Text('Profile', style: AppStyles.black18BoldStyle),
              Icon(Icons.edit, size: 30.sp),
            ],
          ),
          HightSpaceWidgets(height: 27),
          Center(
            child: ClipOval(
              child: Image.asset(
                AppAssets.profile,
                width: 100.w,
                height: 100.w,
                fit: BoxFit.fill,
              ),
            ),
          ),
          HightSpaceWidgets(height: 16),
          Text("Full Name", style: AppStyles.grey12MediumStyle),
          HightSpaceWidgets(height: 10),
          Text("Mohamed AbouElkhair", style: AppStyles.black15BoldStyle),
          HightSpaceWidgets(height: 10),
          Divider(color: AppColore.greyColor),
          HightSpaceWidgets(height: 16),
          Text("Email", style: AppStyles.grey12MediumStyle),
          HightSpaceWidgets(height: 10),
          Text("Mohamed@gmail.com", style: AppStyles.black15BoldStyle),
          HightSpaceWidgets(height: 10),
          Divider(color: AppColore.greyColor),
        ],
      ),
    );
    ;
  }
}
