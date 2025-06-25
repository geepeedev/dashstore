import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:dashstore/utilities/helper/dash_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class SearchbarWidget extends StatelessWidget {
  const SearchbarWidget({super.key, EdgeInsetsGeometry? padding, this.onTap})
    : padding = padding ?? const EdgeInsets.symmetric(horizontal: 16.0);

  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = DashHelper.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          padding: EdgeInsets.all(DashSizes.md),
          decoration: BoxDecoration(
            color: isDark ? DashColors.neutralDark : DashColors.neutralSoft,
            borderRadius: BorderRadius.circular(DashSizes.cardRadiusLg),
          ),
          child: Row(
            children: [
              Icon(
                IconsaxPlusBroken.search_normal,
                color: isDark ? DashColors.neutralSoft : DashColors.neutralDark,
              ),
              SizedBox(width: DashSizes.defaultSpaceItem),
              Text(
                "Search in store",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color:
                      isDark ? DashColors.neutralSoft : DashColors.neutralDark,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
