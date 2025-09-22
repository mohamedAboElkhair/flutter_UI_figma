import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/core/styling/app_assets.dart';
import 'package:ui_figma/core/styling/app_colors.dart';
import 'package:ui_figma/core/styling/app_styles.dart';
import 'package:ui_figma/widgets/space_widgets.dart.dart';

class CardItemWidget extends StatelessWidget {
  String? titleCard;
  String? balanceCard;
  String? cardNumber;
  String? cardDate;
  CardItemWidget({
    super.key,
    this.titleCard,
    this.balanceCard,
    this.cardNumber,
    this.cardDate,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
            color: AppColore.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.ellipse14,
            width: 120.w,
            height: 130.h,
            fit: BoxFit.fill,
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.ellipse15,
            width: 120.w,
            height: 130.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.ellipse14,
            width: 207.w,
            height: 208.h,
            fit: BoxFit.fill,
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.ellipse15,
            width: 207.w,
            height: 208.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 24.w,
          top: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleCard ?? "X Card",
                style: AppStyles.black18BoldStyle.copyWith(
                  fontSize: 12.sp,
                  color: AppColore.whiteColor,
                ),
              ),
              HightSpaceWidgets(height: 75),
              Text(
                "Balance",
                style: AppStyles.black18BoldStyle.copyWith(
                  fontSize: 12.sp,
                  color: AppColore.whiteColor,
                ),
              ),
              HightSpaceWidgets(height: 10),
              Text(
                balanceCard ?? "23000 EG",
                style: AppStyles.black18BoldStyle.copyWith(
                  color: AppColore.whiteColor,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 26.h,
          right: 24.w,
          child: Text(
            cardDate ?? "12/24",
            style: AppStyles.black18BoldStyle.copyWith(
              fontSize: 12.sp,
              color: AppColore.whiteColor,
            ),
          ),
        ),
        Positioned(
          bottom: 26.h,
          left: 24.w,
          child: Text(
            cardNumber ?? "**** 1234",
            style: AppStyles.black18BoldStyle.copyWith(
              fontSize: 12.sp,
              color: AppColore.whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
