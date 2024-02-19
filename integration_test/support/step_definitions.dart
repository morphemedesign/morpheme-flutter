import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:morpheme_cucumber/morpheme_cucumber.dart';

extension TypeStringExtension on String {
  Future<void> when({
    required Future<void> Function() onKey,
    required Future<void> Function() onText,
  }) {
    switch (this) {
      case 'key':
        return onKey.call();
      case 'text':
        return onText.call();
      default:
        return Future.sync(() => null);
    }
  }
}

Map<RegExp, Function> stepDefinitions = {
  // Arrange
  RegExp(r'I on "([^"]*)" page'): (PatrolTester $, String key) async {
    await $(Key(key)).waitUntilVisible();
  },

  // Action
  RegExp(r'I clear textfield in "([^"]*)" key'):
      (PatrolTester $, String key) async {
    await $(Key(key)).enterText('');
  },
  RegExp(r'I enter "([^"]*)" into "([^"]*)" key'):
      (PatrolTester $, String value, String key) async {
    await $(Key(key)).enterText(value);
  },
  RegExp(r'I scroll in "([^"]*)" key until visible "([^"]*)" (key|text)'):
      (PatrolTester $, String scrollKey, String visibleKey, String type) async {
    await type.when(
      onKey: () => $(Key(visibleKey)).scrollTo(view: $(Key(scrollKey)).finder),
      onText: () => $(visibleKey).scrollTo(view: $(Key(scrollKey)).finder),
    );
  },
  RegExp(r'I tap "([^"]*)" (key|text)'):
      (PatrolTester $, String key, String type) async {
    await type.when(
      onKey: () => $(Key(key)).tap(),
      onText: () => $(key).tap(),
    );
  },
  RegExp(r'I longtap "([^"]*)" (key|text)'):
      (PatrolTester $, String key, String type) async {
    await type.when(
      onKey: () => $.tester.longPress($(Key(key))),
      onText: () => $.tester.longPress($(key)),
    );
  },
  RegExp(r'I hide keyboard'): (PatrolTester $) async {
    FocusManager.instance.primaryFocus?.unfocus();
  },

  // Assert
  RegExp(r'I see "([^"]*)" text in "([^"]*)" key'):
      (PatrolTester $, String text, String key) async {
    expect((await $(Key(key)).waitUntilVisible()).text, text);
  },
  RegExp(r'I see "([^"]*)" text'): (PatrolTester $, String text) async {
    expect($(text), findsOneWidget);
  },
  RegExp(r'I see "([^"]*)" text have (\d+) in screen'):
      (PatrolTester $, String text, String n) async {
    expect($(text), findsNWidgets(int.parse(n)));
  },
  RegExp(r'I wait for "([^"]*)" (key|text) to visible'):
      (PatrolTester $, String key, String type) async {
    await type.when(
      onKey: () => $(Key(key)).waitUntilVisible(),
      onText: () => $(key).waitUntilVisible(),
    );
  },
  RegExp(r'I navigate to "([^"]*)" page'): (PatrolTester $, String key) async {
    await $(Key(key)).waitUntilVisible();
  },

  // Flow Control
  RegExp(r'I wait (\d+) millisecond'): (PatrolTester $, String duration) async {
    await Future.delayed(Duration(milliseconds: int.parse(duration)));
  },
};
