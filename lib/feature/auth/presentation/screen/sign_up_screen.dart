import 'package:dashstore/feature/auth/presentation/widget/login/divider_widget.dart';
import 'package:dashstore/feature/auth/presentation/widget/login/other_signin_option_widget.dart';
import 'package:dashstore/feature/auth/presentation/widget/signup/signup_form_widget.dart';
import 'package:dashstore/feature/auth/presentation/widget/signup/signup_header_widget.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const String route = '/signup';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(DashSizes.defaultSpace),
              child: Column(
                children: [
                  // signup header
                  SignUpHeaderWidget(),
                  // signup form
                  SignUpFormWidget(),
                  // divider
                  DividerWidget(text: "or Signup with"),
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
