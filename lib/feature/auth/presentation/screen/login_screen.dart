import 'package:dashstore/feature/auth/presentation/widget/login/divider_widget.dart';
import 'package:dashstore/feature/auth/presentation/widget/login/form_widget.dart';
import 'package:dashstore/feature/auth/presentation/widget/login/header_widget.dart';
import 'package:dashstore/feature/auth/presentation/widget/login/other_signin_option_widget.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(DashSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // header
                  HeaderWidget(),
                  SizedBox(height: DashSizes.defaultSpaceSection),
                  // form
                  FormWidget(),
                  SizedBox(height: DashSizes.defaultSpaceSection / 2),
                  // divider
                  DividerWidget(text: "or Signin with"),
                  SizedBox(height: DashSizes.defaultSpaceSection),
                  // signin wit google and facebook
                  OtherSigninOptionWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
