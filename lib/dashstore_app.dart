import 'package:dashstore/utilities/router/router.dart';
import 'package:dashstore/utilities/theme/dashapp_theme.dart';
import 'package:flutter/material.dart';

class DashStoreApp extends StatelessWidget {
  const DashStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: DashAppTheme.lightTheme,
      // Use the router for navigation
      onGenerateRoute: DashRouter.generateRoute,
      // initialRoute: OnboardingScreen.route,
      darkTheme: DashAppTheme.darkTheme,
    );
  }
}
