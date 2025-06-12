import 'package:dashstore/feature/auth/presentation/screen/verify_email_screen.dart';
import 'package:dashstore/feature/auth/presentation/widget/signup/signup_terms_widget.dart';
import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: DashSizes.defaultSpaceSection),
          // first and last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: "First name",
                    prefixIcon: Icon(IconsaxPlusLinear.user),
                  ),
                ),
              ),
              SizedBox(width: DashSizes.defaultSpaceItem),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: "Last name",
                    prefixIcon: Icon(IconsaxPlusLinear.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: DashSizes.defaultSpaceItem),
          // username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: "Username",
              prefixIcon: Icon(IconsaxPlusLinear.user_edit),
            ),
          ),
          SizedBox(height: DashSizes.defaultSpaceItem),
          // user email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(IconsaxPlusLinear.direct_send),
            ),
          ),
          SizedBox(height: DashSizes.defaultSpaceItem),
          // user password
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(IconsaxPlusLinear.lock_1),
              suffixIcon: Icon(IconsaxPlusLinear.eye_slash),
            ),
          ),
          SizedBox(height: DashSizes.defaultSpaceSection),
          // terms and condtions check
          SignUpTandCWidget(),
          SizedBox(height: DashSizes.defaultSpaceSection),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(DashColors.primary),
              ),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  VerifyEmailScreen.route,
                  (Route<dynamic> route) => false,
                );
              },
              child: Text(
                "Create Account",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: DashColors.onPrimary,
                ),
              ),
            ),
          ),
          SizedBox(height: DashSizes.defaultSpaceSection),
        ],
      ),
    );
  }
}
