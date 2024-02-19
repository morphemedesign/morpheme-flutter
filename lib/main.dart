import 'dart:async';
import 'dart:developer';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'firebase_options.dart';
import 'locator.dart';

Future<void> init() async {
  /// Specifies the `SystemUiMode` to have visible when the application is running.
  await SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [
      SystemUiOverlay.bottom,
      SystemUiOverlay.top,
    ],
  );

  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  setupLocator();
}

void main() async {
  // usePathUrlStrategy();
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await init();

    runApp(const MyApp());
  }, (error, stack) {
    log(error.toString(), error: error, stackTrace: stack);
    // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final router = locator<GoRouter>();

    return BlocProvider(
      create: (context) => GlobalCubit(),
      child: Builder(builder: (context) {
        return MaterialApp.router(
          title: 'Morpheme',
          scaffoldMessengerKey: scaffoldMessengerKey,
          theme: context.selectedTheme.themeData,
          darkTheme: context.selectedTheme.themeData,
          locale: context.selectedLocale,
          localizationsDelegates: S.localizationsDelegates,
          supportedLocales: S.supportedLocales,
          routerConfig: router,
        );
      }),
    );
  }
}
