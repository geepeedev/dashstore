import 'package:dashstore/feature/auth/bloc/onboarding%20cubit/onboarding_cubit.dart';
import 'package:dashstore/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      right: DashSizes.defaultSpace,
      child: TextButton(
        onPressed: () => context.read<OnboardingCubit>().onSkipPage(),
        child: Text('Skip', style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
