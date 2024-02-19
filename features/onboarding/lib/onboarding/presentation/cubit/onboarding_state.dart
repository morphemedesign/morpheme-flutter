part of 'onboarding_cubit.dart';

class OnboardingStateCubit extends Equatable {
  const OnboardingStateCubit({
    required this.selected,
    required this.isLast,
  });

  final int selected;
  final bool isLast;

  OnboardingStateCubit copyWith({
    int? selected,
    bool? isLast,
  }) {
    return OnboardingStateCubit(
      selected: selected ?? this.selected,
      isLast: isLast ?? this.isLast,
    );
  }

  @override
  List<Object?> get props => [selected, isLast];
}
