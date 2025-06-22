import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class DashSectionHeaderWidget extends StatelessWidget {
  const DashSectionHeaderWidget({
    super.key,
    this.showTextButton = true,
    this.buttonTitle = 'View all',
    required this.text,
    this.onTap,
  });

  final bool showTextButton;
  final String buttonTitle, text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: DashSizes.defaultSpace),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text, style: Theme.of(context).textTheme.headlineSmall),
              if (showTextButton)
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(DashColors.primary),
                  ),
                  onPressed: () {},
                  child: Text(
                    buttonTitle,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
