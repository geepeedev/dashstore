import 'package:dashstore/utilities/constants/colors.dart';
import 'package:flutter/material.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Let's ",
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.apply(color: DashColors.neutralMedium),
          ),
          TextSpan(
            text: "create ",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          TextSpan(
            text: "your ",
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.apply(color: DashColors.neutralMedium),
          ),
          TextSpan(
            text: "account.",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
