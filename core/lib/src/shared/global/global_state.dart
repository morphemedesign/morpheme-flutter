part of 'global_cubit.dart';

class GlobalState extends Equatable {
  const GlobalState({
    required this.locale,
    required this.theme,
  });

  final Locale locale;
  final MorphemeTheme theme;

  @override
  List<Object?> get props => [locale, theme];

  GlobalState copyWith({
    Locale? locale,
    MorphemeTheme? theme,
  }) {
    return GlobalState(
      locale: locale ?? this.locale,
      theme: theme ?? this.theme,
    );
  }
}
