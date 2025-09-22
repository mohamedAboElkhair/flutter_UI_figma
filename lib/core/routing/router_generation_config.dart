import 'package:go_router/go_router.dart';
import 'package:ui_figma/core/routing/app_routes.dart';
import 'package:ui_figma/features/auth/create_new_password_screen.dart';
import 'package:ui_figma/features/auth/forgot_password_screen.dart';
import 'package:ui_figma/features/auth/login_screen.dart';
import 'package:ui_figma/features/auth/register_screen.dart';
import 'package:ui_figma/features/main_screen/main_screen.dart';
import 'package:ui_figma/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:ui_figma/features/verify_otp/verifty_otp_screen.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.loginScreem,
        name: AppRoutes.loginScreem,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgetPassword,
        name: AppRoutes.forgetPassword,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.createNewPasword,
        name: AppRoutes.createNewPasword,
        builder: (context, state) => const CreateNewPasswordScreen(),
      ),
            GoRoute(
        path: AppRoutes.veriftyOtpScreen,
        name: AppRoutes.veriftyOtpScreen,
        builder: (context, state) => const VeriftyOtpScreen(),
      ),
GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (context, state) => const MainScreen(),
      ),
    ],
  );
}
