import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_figma/core/routing/app_routes.dart';
import 'package:ui_figma/core/styling/app_assets.dart';
import 'package:ui_figma/core/styling/app_styles.dart';
import 'package:ui_figma/widgets/primay_button_widget.dart';
import 'package:ui_figma/widgets/primay_outlined_button_widget.dart';
import 'package:ui_figma/widgets/space_widgets.dart.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              AppAssets.loginSceern,
              width: double.infinity,
              height: 500.h,
              fit: BoxFit.fitWidth,
            ),
            HightSpaceWidgets(height: 18),
            PrimayButtonWidget(
              onPressed: () {
                // GoRouter.of(context).pushNamed(AppRoutes.loginScreem);
                GoRouter.of(context).goNamed(AppRoutes.mainScreen);
              },
              width: 331.w,
              height: 56.h,
              buttonText: "Login",
            ),
            HightSpaceWidgets(height: 12),
            PrimayOutlinedButtonWidget(
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
              },
              width: 331.w,
              height: 56.h,
              buttonText: "Register",
            ),
            HightSpaceWidgets(height: 34),
            Text(
              "Continue As a Guest",
              style: AppStyles.black15BoldStyle.copyWith(
                color: const Color(0xff202955),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
