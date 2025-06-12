import 'package:dashstore/feature/auth/presentation/screen/forget_password_screen.dart';
import 'package:dashstore/feature/auth/presentation/screen/sign_up_screen.dart';
import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // email field
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(IconsaxPlusLinear.arrow_right_1),
              labelText: 'Email',
            ),
          ),
          SizedBox(height: DashSizes.inputFieldSpacing),
          TextFormField(
            decoration: InputDecoration(
              suffixIcon: Icon(IconsaxPlusLinear.eye_slash),
              prefixIcon: Icon(IconsaxPlusLinear.lock_1),
              labelText: 'Password',
            ),
          ),
          SizedBox(height: DashSizes.inputFieldSpacing / 2),
          // remember me and forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(value: true, onChanged: (value) {}),
                  ),
                  Text(
                    "Remember me",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              // forget password
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    ForgetPasswordScreen.route,
                    (Route<dynamic> route) => false,
                  );
                },
                child: Text(
                  'Forgot password',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: DashColors.secondary),
                ),
              ),
            ],
          ),
          SizedBox(height: DashSizes.defaultSpaceSection),
          // signin button
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  DashColors.primary.withAlpha(150),
                ),
              ),
              child: Text(
                "Sign in",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          SizedBox(height: DashSizes.defaultSpaceItem),
          // create account buttton
          SizedBox(
            width: double.infinity,
            child: FilledButton.tonal(
              onPressed: () {
                Navigator.of(context).pushNamed(SignUpScreen.route);
              },
              child: Text(
                "Create Account",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
