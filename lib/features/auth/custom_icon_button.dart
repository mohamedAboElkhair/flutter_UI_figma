import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_figma/core/styling/app_assets.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? iconPath;
  final double? widthContainer;
  final double? heightContainer;

  const CustomIconButton({
    super.key,
    this.onTap,
    this.iconPath,
    this.heightContainer,
    this.widthContainer,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: widthContainer ?? 105.w,
        height: heightContainer ?? 56.h,
        decoration: BoxDecoration(
          // border: Border.all(color: Color(0xffE8ECF4), width: 1),
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.transparent,
        ),
        child: Center(
          child: SvgPicture.asset(iconPath ?? AppAssets.facebookSvgIcon),
        ),
      ),
    );
  }
}
