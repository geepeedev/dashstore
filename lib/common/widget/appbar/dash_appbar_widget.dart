import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class DashAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const DashAppbarWidget({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: DashSizes.md),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        title: title,
        actions: actions,
        leading:
            showBackArrow
                ? IconButton(
                  onPressed: Navigator.of(context).pop,
                  icon: Icon(IconsaxPlusLinear.arrow_left),
                )
                : leadingIcon != null
                ? IconButton(onPressed: leadingPressed, icon: Icon(leadingIcon))
                : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
