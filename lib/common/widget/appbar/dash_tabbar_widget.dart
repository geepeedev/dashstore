import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/helper/dash_helper.dart';
import 'package:flutter/material.dart';

class DashTabbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const DashTabbarWidget({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color:
          DashHelper.isDarkMode(context)
              ? DashColors.neutralDark
              : DashColors.onPrimary,
      child: TabBar(
        isScrollable: true,
        indicatorColor: DashColors.primary,
        unselectedLabelColor: DashColors.neutralMedium,
        labelColor:
            DashHelper.isDarkMode(context)
                ? DashColors.onPrimary
                : DashColors.neutralDark,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
