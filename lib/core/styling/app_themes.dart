import 'package:flutter/material.dart';
import 'package:ui_figma/core/styling/app_colors.dart';
import 'package:ui_figma/core/styling/app_fonts.dart';
import 'package:ui_figma/core/styling/app_styles.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primaryColor: AppColore.primaryColor,
    scaffoldBackgroundColor: AppColore.whiteColor,
    fontFamily: AppFonts.mainFontName,
    textTheme: TextTheme(
      titleLarge: AppStyles.primaryHeadLinesStyle,
      titleMedium: AppStyles.subtitlesStyles,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColore.primaryColor,
      disabledColor: AppColore.secondColor,
    ),
  );
}
