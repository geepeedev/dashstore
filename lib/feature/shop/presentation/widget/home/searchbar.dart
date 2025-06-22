import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:dashstore/utilities/helper/dash_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class SearchbarWidget extends StatelessWidget {
  const SearchbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DashHelper.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: DashSizes.defaultSpace),
      child: Container(
        padding: EdgeInsets.all(DashSizes.md),
        decoration: BoxDecoration(
          color: isDark ? DashColors.neutralSoft : DashColors.onBackground,
          borderRadius: BorderRadius.circular(DashSizes.cardRadiusLg),
        ),
        child: Row(
          children: [
            Icon(
              IconsaxPlusBroken.search_normal,
              color: isDark ? DashColors.neutralDark : DashColors.textLight,
            ),
            SizedBox(width: DashSizes.defaultSpaceItem),
            Text(
              "Search in store",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isDark ? DashColors.neutralDark : DashColors.textLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
