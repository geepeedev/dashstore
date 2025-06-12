import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState(currentPage: 0));

  void onNextPage() {
    if (state.currentPage < 2) {
      emit(state.copyWith(currentPage: state.currentPage + 1));
    }
  }

  void onSkipPage() {
    // emit(OnboardingState(currentPage: state.currentPage + 1));
    emit(state.copyWith(currentPage: 2));
  }

  void onDotNavigationClick(int index) {
    emit(state.copyWith(currentPage: index));
  }

  void onUpdatePageIndicator(int index) {
    emit(state.copyWith(currentPage: index));
  }

  @override
  void onChange(Change<OnboardingState> change) {
    super.onChange(change);
  }
}
