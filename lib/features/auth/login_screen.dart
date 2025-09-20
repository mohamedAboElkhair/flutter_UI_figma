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

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isPassword = true;
  late TextEditingController emailController;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HightSpaceWidgets(height: 12),
                  IconNavWidget(),
                  HightSpaceWidgets(height: 28),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      "Welcome Back Again",
                      style: AppStyles.primaryHeadLinesStyle,
                    ),
                  ),
                  HightSpaceWidgets(height: 32),
                  TextFieldWidget(
                    hintText: "Enter your Email",
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Email";
                      }
                      return null;
                    },
                  ),
                  HightSpaceWidgets(height: 15),
                  TextFieldWidget(
                    isPassword: isPassword,
                    controller: password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Password";
                      }
                      if (value.length < 8) {
                        return "Password must be at least 8 Characters";
                      }
                    },
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
                  HightSpaceWidgets(height: 28),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.forgetPassword);
                      }, //GoRouter.of(context).pushNamed(AppRoutes.loginScreem);
                      child: Text(
                        "Forget Password",
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: Color(0xff6A707C),
                        ),
                      ),
                    ),
                  ),
                  HightSpaceWidgets(height: 30),
                  PrimayButtonWidget(
                    buttonText: "Login",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(password.text);
                      }
                      ;
                    },
                  ),
                  HightSpaceWidgets(height: 35),
                  Row(
                    children: [
                      SizedBox(width: 100.w, child: const Divider()),
                      WidthSpaceWidgets(width: 12),
                      Text(
                        "Or Login With",
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: const Color(0xff6A707C),
                        ),
                      ),
                      WidthSpaceWidgets(width: 12),

                      SizedBox(width: 100.w, child: const Divider()),
                    ],
                  ),
                  HightSpaceWidgets(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomIconButton(iconPath: AppAssets.facebookSvgIcon),
                      CustomIconButton(iconPath: AppAssets.googleSvgIcon),
                      CustomIconButton(iconPath: AppAssets.appleSvgIcon),
                    ],
                  ),
                  HightSpaceWidgets(height: 35),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
