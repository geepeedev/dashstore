import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/helper/dash_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CartBadgeWidget extends StatelessWidget {
  const CartBadgeWidget({super.key, this.onPressed, this.iconColor});

  final void Function()? onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final isDark = DashHelper.isDarkMode(context);
    return SizedBox(
      width: 55,
      child: Stack(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              IconsaxPlusBold.shopping_cart,
              color:
                  isDark
                      ? iconColor ?? DashColors.background
                      : iconColor ?? DashColors.onBackground,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: DashColors.primary,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "12",
                  style: Theme.of(context).textTheme.labelMedium?.apply(
                    color: DashColors.onPrimary,
                    fontWeightDelta: 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
