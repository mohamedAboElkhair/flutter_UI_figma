import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_figma/core/styling/app_colors.dart';

class IconNavWidget extends StatelessWidget {
  final Icon? iconNav;
  const IconNavWidget({super.key, this.iconNav});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: GoRouter.of(context).pop,
        child: Container(
          width: 41.w,
          height: 41.h,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffE8ECF4), width: 1),
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.transparent,
          ),
          child: Center(
            child: Icon(Icons.arrow_back, color: AppColore.primaryColor),
          ),
        ),
      ),
    );
  }
}
