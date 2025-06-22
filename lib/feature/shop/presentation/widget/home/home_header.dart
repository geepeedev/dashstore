import 'dart:ui';
import 'package:dashstore/common/style/home_clipper.dart';
import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/rive_string.dart';
import 'package:dashstore/utilities/helper/dash_helper.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class DashHomeHeaderWidget extends StatelessWidget {
  const DashHomeHeaderWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final isDark = DashHelper.isDarkMode(context);
    return ClipPath(
      clipper: BackgrounCLipper(),
      child: SizedBox(
        width: DashHelper.screenWidth(context),
        height: 380,
        child: ColoredBox(
          color:
              isDark ? DashColors.secondary : DashColors.primary.withAlpha(100),
          child: Stack(
            children: [
              Positioned.fill(
                child: RiveAnimation.asset(
                  riveHomeBackground,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
              Positioned.fill(
                child: RepaintBoundary(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: child,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
