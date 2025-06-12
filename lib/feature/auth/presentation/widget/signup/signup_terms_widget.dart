import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:dashstore/utilities/helper/dash_helper.dart';
import 'package:flutter/material.dart';

class SignUpTandCWidget extends StatelessWidget {
  const SignUpTandCWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = DashHelper.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: DashSizes.defaultSpaceItem),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "I agree to ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: "Privacy policy",
                style: Theme.of(context).textTheme.bodyMedium?.apply(
                  decoration: TextDecoration.underline,
                  color: isDark ? DashColors.neutralSoft : DashColors.primary,
                  decorationColor:
                      isDark ? DashColors.neutralSoft : DashColors.primary,
                ),
              ),
              TextSpan(
                text: " and ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: "Terms of use",
                style: Theme.of(context).textTheme.bodyMedium?.apply(
                  decoration: TextDecoration.underline,
                  color: isDark ? DashColors.neutralSoft : DashColors.primary,
                  decorationColor:
                      isDark ? DashColors.neutralSoft : DashColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
