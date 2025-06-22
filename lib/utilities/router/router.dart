import 'package:dashstore/common/cubit/navigation_menu_cubit.dart';
import 'package:dashstore/common/widget/navigation/navigation_menu.dart';
import 'package:dashstore/feature/auth/bloc/onboarding%20cubit/onboarding_cubit.dart';
import 'package:dashstore/feature/auth/presentation/screen/forget_password_screen.dart';
import 'package:dashstore/feature/auth/presentation/screen/login_screen.dart';
import 'package:dashstore/feature/auth/presentation/screen/onboarding_screen.dart';
import 'package:dashstore/feature/auth/presentation/screen/sign_up_screen.dart';
import 'package:dashstore/feature/auth/presentation/screen/verify_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case OnboardingScreen.route:
        return MaterialPageRoute(
          builder:
              (BuildContext context) => BlocProvider(
                create: (context) => OnboardingCubit(),
                child: OnboardingScreen(),
              ),
        );

      case LoginScreen.route:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case SignUpScreen.route:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case VerifyEmailScreen.route:
        return MaterialPageRoute(builder: (_) => VerifyEmailScreen());
      case ForgetPasswordScreen.route:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case NavigationMenu.route:
        return MaterialPageRoute(
          builder:
              (BuildContext context) => BlocProvider(
                create: (context) => NavigationMenuCubit(),
                child: NavigationMenu(),
              ),
        );
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
