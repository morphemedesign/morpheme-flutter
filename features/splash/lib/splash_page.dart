import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    rootNavigatorKey.currentState?.run((it) {
      if (!kIsWeb) locator<MorphemeInspector>().setNavigatorState(it);
    });
    init();
  }

  Future<void> init() async {
    await locator.allReady();
    setupTimer();
  }

  void setupTimer() {
    Timer(
      const Duration(seconds: 1),
      (() => context.goToOnboading()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          MorphemeImages.logoLight,
          width: context.widthPercentage(50),
        ),
      ),
    );
  }
}
