import 'package:flutter/material.dart';
import 'package:courses_app/core/routing/routes.dart';
import '../../features/auth/ui/screens/login_screen.dart';
import 'package:courses_app/core/routing/router_helper.dart';
import '../../features/auth/ui/screens/register_screen.dart';
import '../../features/onBoarding/ui/screens/splash_screen.dart';
import '../../features/auth/ui/screens/reset_password_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return buildRoute(const SplashScreen());
      case Routes.loginScreen:
        return buildRoute(const LoginScreen());
      case Routes.registerScreen:
        return buildRoute(const RegisterScreen());
      case Routes.resetPasswordScreen:
        return buildRoute(const ResetPasswordScreen());
      default:
        return buildRoute(
          Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
