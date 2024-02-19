import 'package:flutter/material.dart';

import '../l10n/s.dart';
import 'mock_provider_gorouter.dart';

class MaterialAppTest extends StatelessWidget {
  const MaterialAppTest({
    super.key,
    this.locale,
    this.themeData,
    required this.child,
  });

  final Locale? locale;
  final ThemeData? themeData;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var locale = this.locale;
    if (locale == null && S.supportedLocales.isNotEmpty) {
      locale = S.supportedLocales.first;
    }
    return MaterialApp(
      title: 'Morpheme',
      theme: themeData,
      darkTheme: themeData,
      locale: locale,
      localizationsDelegates: S.localizationsDelegates,
      supportedLocales: S.supportedLocales,
      home: MockGoRouterProvider(
        goRouter: MockGoRouter(),
        child: child,
      ),
    );
  }
}
