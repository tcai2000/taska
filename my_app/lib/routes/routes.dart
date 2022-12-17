import 'package:flutter/material.dart';
import 'package:my_app/routes/routers_path.dart';
import 'package:my_app/views/screens/lets_in_screen/lets_in_screen.dart';
import 'package:my_app/views/screens/screens_export.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //Splash Route
      case RoutersPath.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      // Onboarding Route
      case RoutersPath.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      // Let in Route
      case RoutersPath.letsInRoute:
        return MaterialPageRoute(builder: (_) => const LetsInScreen());
      // Login Route
      case RoutersPath.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      // Sign up Route
      case RoutersPath.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      // Forgot Pass Route
      case RoutersPath.forgotPassRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPassScreen());
      // Main Route
      case RoutersPath.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      // Error Route default

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
