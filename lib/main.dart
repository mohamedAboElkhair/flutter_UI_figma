import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/core/routing/router_generation_config.dart';
import 'package:ui_figma/core/styling/app_themes.dart';
import 'package:ui_figma/features/on_boarding_screen/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter UI',
          theme: AppThemes.lightTheme,
          routerConfig: RouterGenerationConfig.goRouter,
          debugShowCheckedModeBanner:
              false, // This line removes the debug banner
        );
      },
      child: const OnBoardingScreen(),
    );
  }
}
