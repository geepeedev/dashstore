import 'package:dashstore/utilities/constants/colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // logo
        SizedBox(height: 150),
        // login header title
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Welcome ",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              TextSpan(
                text: "back",
                style: Theme.of(context).textTheme.headlineMedium?.apply(
                  color: DashColors.neutralMedium,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
