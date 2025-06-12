import 'package:dashstore/utilities/constants/colors.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            thickness: 0.6,
            endIndent: 5,
            indent: 60,
            color: DashColors.neutralLight,
          ),
        ),
        Text(text, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            thickness: 0.6,
            endIndent: 60,
            indent: 5,
            color: DashColors.neutralLight,
          ),
        ),
      ],
    );
  }
}
