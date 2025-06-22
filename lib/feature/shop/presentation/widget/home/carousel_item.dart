import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/rive_string.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CarouselItemWidget extends StatelessWidget {
  const CarouselItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DashColors.neutralDark,
      child: Center(
        child: RiveAnimation.asset(
          riveHomeBackground,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
