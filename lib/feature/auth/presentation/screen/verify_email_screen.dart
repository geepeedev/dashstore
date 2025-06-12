import 'package:dashstore/feature/auth/presentation/screen/login_screen.dart';
import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:dashstore/utilities/helper/dash_helper.dart';
import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  static const String route = '/verification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                LoginScreen.route,
                (Route<dynamic> route) => false,
              );
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(DashSizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: DashHelper.screenHeight(context) * 0.45,
                  width: DashHelper.screenWidth(context) * 0.8,
                ),
                SizedBox(height: DashSizes.defaultSpace),
                Text(
                  "Verify your Email Address!",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: DashSizes.defaultSpaceItem),
                Text(
                  "Congratulations on creating an account. A verification link has been sent to your email address, click on the link to confirm your email and start shopping.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(height: DashSizes.defaultSpaceSection),
                // confirm email button
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        DashColors.primary,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Confirm Email',
                      style: Theme.of(context).textTheme.bodyMedium?.apply(
                        color: DashColors.onPrimary,
                        fontWeightDelta: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend Email',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
