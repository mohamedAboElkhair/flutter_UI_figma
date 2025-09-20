import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_figma/core/routing/app_routes.dart';
import 'package:ui_figma/core/styling/app_assets.dart';
import 'package:ui_figma/core/styling/app_colors.dart';
import 'package:ui_figma/core/styling/app_styles.dart';
import 'package:ui_figma/features/auth/custom_icon_button.dart';
import 'package:ui_figma/features/nav/widgets/icon_nav_widget.dart';
import 'package:ui_figma/widgets/primay_button_widget.dart';
import 'package:ui_figma/widgets/space_widgets.dart.dart';
import 'package:ui_figma/widgets/text_field_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final formKeyForget = GlobalKey<FormState>();

  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Form(
              key: formKeyForget,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HightSpaceWidgets(height: 12),
                  IconNavWidget(),
                  HightSpaceWidgets(height: 28),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      "Forgot Password?",
                      style: AppStyles.primaryHeadLinesStyle,
                    ),
                  ),
                  HightSpaceWidgets(height: 20),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      "Don't worry! It occurs. Please enter the email address linked with your account.",
                      style: AppStyles.subtitlesStyles,
                    ),
                  ),
                  HightSpaceWidgets(height: 32),
                  TextFieldWidget(
                    hintText: "Email",
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Email";
                      }
                      return null;
                    },
                  ),
                  HightSpaceWidgets(height: 15),
                  PrimayButtonWidget(
                    buttonText: "Send Code",
                    onPressed: () {
                      if (formKeyForget.currentState!.validate()) {
                        print(emailController.text);
                      }
                    },
                  ),
                  HightSpaceWidgets(height: 25),

                  HightSpaceWidgets(height: 25),
                  Center(
                    child: InkWell(
                      onTap: () {
                        // GoRouter.of(
                        //   context,
                        // ).pushNamed(AppRoutes.createNewPasword);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Remember Password?",
                          style: AppStyles.black15BoldStyle.copyWith(
                            color: AppColore.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: "Login Now",
                              style: AppStyles.black15BoldStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
