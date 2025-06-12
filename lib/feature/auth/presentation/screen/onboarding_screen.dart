import 'package:dashstore/feature/auth/bloc/onboarding%20cubit/onboarding_cubit.dart';
import 'package:dashstore/feature/auth/presentation/widget/onboarding/onboarding_widget.dart';
import 'package:dashstore/feature/auth/presentation/widget/onboarding/page_indicator_widget.dart';
import 'package:dashstore/feature/auth/presentation/widget/onboarding/skip_button_widget.dart';
import 'package:dashstore/utilities/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final PageController _pageController = PageController();
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // pageview
          BlocListener<OnboardingCubit, OnboardingState>(
            listener: (context, state) {
              _pageController.animateToPage(
                state.currentPage,
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeInOut,
              );
            },
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                context.read<OnboardingCubit>().onUpdatePageIndicator(value);
              },
              children: [
                OnboardingWidget(
                  title: DashTexts.onBoardingTitle1,
                  subtitle: DashTexts.onBoardingSubtitle1,
                  riveFileString: 'sdss',
                ),
                OnboardingWidget(
                  title: DashTexts.onBoardingTitle2,
                  subtitle: DashTexts.onBoardingSubtitle2,
                  riveFileString: 'sdss',
                ),
                OnboardingWidget(
                  title: DashTexts.onBoardingTitle3,
                  subtitle: DashTexts.onBoardingSubtitle3,
                  riveFileString: 'sdss',
                ),
              ],
            ),
          ),
          // skip button
          SkipButtonWidget(),
          // current page indicator
          PageIndicatorWidget(),

          // next button
        ],
      ),
    );
  }
}
