import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/core/styling/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final Widget? suffixTcon;
  final double? width;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const TextFieldWidget({
    super.key,
    this.hintText,
    this.suffixTcon,
    this.width,
    this.isPassword,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      child: TextFormField(
        controller: controller ?? TextEditingController(),
        validator: validator,
        cursorColor: AppColore.primaryColor,
        autofocus: false,
        obscureText: isPassword ?? false,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: TextStyle(
            fontSize: 15.sp,
            color: const Color(0xff8391A1),
            fontWeight: FontWeight.w400,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 18.h),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColore.primaryColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: const Color(0xffEBECF4), width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),

          filled: true,
          fillColor: Color(0xffF7F8F9),
          suffixIcon: suffixTcon,
        ),
      ),
    );
  }
}
