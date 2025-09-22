import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ui_figma/core/routing/app_routes.dart';
import 'package:ui_figma/core/styling/app_assets.dart';
import 'package:ui_figma/core/styling/app_colors.dart';
import 'package:ui_figma/core/styling/app_styles.dart';
import 'package:ui_figma/features/auth/custom_icon_button.dart';
import 'package:ui_figma/features/nav/widgets/icon_nav_widget.dart';
import 'package:ui_figma/widgets/primay_button_widget.dart';
import 'package:ui_figma/widgets/space_widgets.dart.dart';
import 'package:ui_figma/widgets/text_field_widget.dart';

class VeriftyOtpScreen extends StatefulWidget {
  const VeriftyOtpScreen({super.key});

  @override
  State<VeriftyOtpScreen> createState() => _VeriftyOtpScreen();
}

class _VeriftyOtpScreen extends State<VeriftyOtpScreen> {
  final formKey = GlobalKey<FormState>();
  bool isPassword = true;
  late TextEditingController pinCodeController;

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HightSpaceWidgets(height: 12),
                IconNavWidget(),
                HightSpaceWidgets(height: 28),
                SizedBox(
                  width: 280.w,
                  child: Text(
                    "OTP Verification",
                    style: AppStyles.primaryHeadLinesStyle,
                  ),
                ),
                HightSpaceWidgets(height: 10),
                SizedBox(
                  width: 280.w,
                  child: Text(
                    "Enter the verification code we just sent on your email address.",
                    style: AppStyles.subtitlesStyles,
                  ),
                ),

                HightSpaceWidgets(height: 15),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  controller: pinCodeController,
                  obscureText: false,
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  textStyle: AppStyles.primaryHeadLinesStyle.copyWith(
                    fontSize: 22.sp,
                  ),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8.r),
                    fieldHeight: 60.h,
                    fieldWidth: 70.w,
                    activeFillColor: AppColore.whiteColor,
                    inactiveFillColor: Colors.grey.shade200,
                    selectedFillColor: Colors.grey.shade200,
                    activeColor: AppColore.primaryColor,
                    inactiveColor: AppColore.greyColor,
                    selectedColor: AppColore.primaryColor,
                  ),
                  onChanged: (value) => setState(() {
                    print(value);
                  }),
                  onCompleted: (value) => setState(() {
                    GoRouter.of(context).pushNamed(AppRoutes.onBoardingScreen);
                  }),
                ),
                HightSpaceWidgets(height: 30),
                PrimayButtonWidget(
                  buttonText: "Vierfy",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print(pinCodeController.text);
                    }
                    ;
                  },
                ),
                const Spacer(),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Don't Have An Account?",
                      style: AppStyles.black15BoldStyle.copyWith(
                        color: AppColore.primaryColor,
                      ),
                      children: [
                        TextSpan(
                          text: "Register Now",
                          style: AppStyles.black15BoldStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                HightSpaceWidgets(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
