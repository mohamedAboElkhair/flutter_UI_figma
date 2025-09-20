import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_figma/core/styling/app_assets.dart';
import 'package:ui_figma/core/styling/app_colors.dart';
import 'package:ui_figma/core/styling/app_styles.dart';
import 'package:ui_figma/features/nav/widgets/icon_nav_widget.dart';
import 'package:ui_figma/widgets/primay_button_widget.dart';
import 'package:ui_figma/widgets/space_widgets.dart.dart';
import 'package:ui_figma/widgets/text_field_widget.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  bool isPassword = true;
  bool isConfirmPassword = true;
  late TextEditingController password;
  late TextEditingController confirmPasseword;

  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    password = TextEditingController();
    confirmPasseword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
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
                      "Create new password",
                      style: AppStyles.primaryHeadLinesStyle,
                    ),
                  ),
                  HightSpaceWidgets(height: 20),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      "Your new password must be unique from those previously used.",
                      style: AppStyles.subtitlesStyles,
                    ),
                  ),
                  HightSpaceWidgets(height: 32),
                  TextFieldWidget(
                    controller: password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Password";
                      }
                      if (value.length < 8) {
                        return "Password must be at least 8 Characters";
                      }
                    },

                    isPassword: isPassword,
                    hintText: "Enter your Password",
                    suffixTcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: AppColore.greyColor,
                        size: 20.sp,
                      ),
                    ),
                  ),
                  HightSpaceWidgets(height: 15),
                  TextFieldWidget(
                    controller: confirmPasseword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Password";
                      }
                      if (value.length < 8) {
                        return "Password must be at least 8 Characters";
                      }
                    },
                    isPassword: isConfirmPassword,
                    hintText: "Confirm Password",
                    suffixTcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isConfirmPassword = !isConfirmPassword;
                        });
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: AppColore.greyColor,
                        size: 20.sp,
                      ),
                    ),
                  ),
                  HightSpaceWidgets(height: 20),
                  PrimayButtonWidget(
                    buttonText: "Reset Password",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(password.text);
                      }
                    },
                  ),
                  HightSpaceWidgets(height: 25),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Remember Password? Login",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
