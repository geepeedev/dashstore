import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:dashstore/utilities/helper/dash_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class WishListIconWidget extends StatefulWidget {
  const WishListIconWidget({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  State<WishListIconWidget> createState() => _WishListIconWidgetState();
}

class _WishListIconWidgetState extends State<WishListIconWidget> {
  bool onIConClick = false;
  @override
  Widget build(BuildContext context) {
    final isDark = DashHelper.isDarkMode(context);
    return IconButton(
      onPressed: () {
        setState(() {
          onIConClick = !onIConClick;
        });
        widget.onPressed;
      },
      icon:
          onIConClick
              ? Icon(
                IconsaxPlusBold.heart,
                size: DashSizes.iconLg,
                color: Colors.red,
              )
              : Icon(
                IconsaxPlusLinear.heart,
                size: DashSizes.iconLg,
                color: isDark ? Colors.white : Colors.black,
              ),
    );
  }
}
