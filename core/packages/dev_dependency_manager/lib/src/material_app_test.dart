import 'package:flutter/material.dart';

import 'mock_provider_gorouter.dart';

class MaterialAppTest extends StatelessWidget {
  const MaterialAppTest({
    required this.child,
    super.key,
    this.locale,
    this.localizationsDelegates,
    this.themeData,
  });

  final Locale? locale;
  final List<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final ThemeData? themeData;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Morpheme',
      theme: themeData,
      darkTheme: themeData,
      locale: locale,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: [locale ?? const Locale('en', 'US')],
      home: MockGoRouterProvider(
        goRouter: MockGoRouter(),
        child: child,
      ),
    );
  }
}
