part of 'onboarding_cubit.dart';

@immutable
class OnboardingState extends Equatable {
  final int currentPage;

  const OnboardingState({required this.currentPage});
  OnboardingState copyWith({int? currentPage}) {
    return OnboardingState(currentPage: currentPage ?? this.currentPage);
  }

  @override
  List<Object?> get props => [currentPage];
}
