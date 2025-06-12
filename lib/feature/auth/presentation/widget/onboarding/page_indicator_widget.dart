import 'package:dashstore/feature/auth/bloc/onboarding%20cubit/onboarding_cubit.dart';
import 'package:dashstore/feature/auth/presentation/screen/login_screen.dart';
import 'package:dashstore/utilities/constants/colors.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: kToolbarHeight + 10,
      left: DashSizes.defaultSpace,
      right: DashSizes.defaultSpace,
      child: BlocSelector<OnboardingCubit, OnboardingState, int>(
        selector: (state) {
          return state.currentPage;
        },
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedSmoothIndicator(
                activeIndex: state,
                onDotClicked: (index) {
                  context.read<OnboardingCubit>().onDotNavigationClick(index);
                },
                count: 3,

                effect: ExpandingDotsEffect(
                  dotHeight: 6,
                  dotWidth: 12,
                  activeDotColor: DashColors.primary,
                ),
              ),
              BlocSelector<OnboardingCubit, OnboardingState, int>(
                selector: (state) {
                  return state.currentPage;
                },
                builder: (context, state) {
                  return IconButton(
                    onPressed: () {
                      if (state == 2) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          LoginScreen.route,
                          (Route<dynamic> route) => false,
                        );
                      } else {
                        context.read<OnboardingCubit>().onNextPage();
                      }
                    },
                    icon: Icon(
                      IconsaxPlusBold.direct_right,
                      color: DashColors.primary,
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
