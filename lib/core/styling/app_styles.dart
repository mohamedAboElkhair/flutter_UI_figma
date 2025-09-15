import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/core/styling/app_colors.dart';
import 'package:ui_figma/core/styling/app_fonts.dart';

class AppStyles {
static TextStyle primaryHeadLinesStyle = TextStyle(fontFamily:AppFonts.mainFontName,fontSize: 30.sp,
    color: AppColore.primaryColor,
    fontWeight: FontWeight.bold);
static TextStyle subtitlesStyles =  TextStyle(fontFamily:AppFonts.mainFontName,fontSize: 16.sp,
    fontWeight: FontWeight.w400,color: AppColore.secondColor);
static TextStyle blackw500 = TextStyle(
    fontFamily:AppFonts.mainFontName,fontSize: 16.sp,
    fontWeight: FontWeight.w500,color: AppColore.blackColor);
static TextStyle grey12MediumStyle = TextStyle(
    fontFamily:AppFonts.mainFontName,fontSize: 16.sp,
    fontWeight: FontWeight.w500,color: AppColore.greyColor);
}