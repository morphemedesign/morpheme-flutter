import 'package:dependency_manager/dependency_manager.dart'
    show GoRouter, InheritedGoRouter;
import 'package:dependency_manager/dependency_manager_test.dart' show Mock;
import 'package:flutter/material.dart'
    show StatelessWidget, Widget, BuildContext;

class MockGoRouter extends Mock implements GoRouter {}

class MockGoRouterProvider extends StatelessWidget {
  const MockGoRouterProvider({
    required this.goRouter,
    required this.child,
    super.key,
  });

  /// The mock navigator used to mock navigation calls.
  final MockGoRouter goRouter;

  /// The child [Widget] to render.
  final Widget child;

  @override
  Widget build(BuildContext context) => InheritedGoRouter(
        goRouter: goRouter,
        child: child,
      );
}
