import 'package:core/src/extensions/extensions.dart';
import 'package:core/src/global_variable.dart';
import 'package:dependency_manager/dependency_manager.dart'
    show GoRouter, GoRouterHelper, IterableExtension;
import 'package:flutter/material.dart';

Map<String, dynamic> _resultGoRouter = {};

typedef GoRouterCallbackReturn = void Function(dynamic result);

extension GoRouterOnBuildContextExtension on BuildContext {
  void _watchRouteChange(
    String currentPath,
    GoRouterCallbackReturn? onReturn,
    VoidCallback listener,
  ) {
    final goRouter = locator<GoRouter>();
    final uri = goRouter.routerDelegate.currentConfiguration.uri;
    if (uri.path == currentPath) {
      if (onReturn != null) onReturn(_resultGoRouter[currentPath]);
      _resultGoRouter.remove(currentPath);
      goRouter.routerDelegate.removeListener(listener);
    }
  }

  void goWithResult(
    String path, {
    GoRouterCallbackReturn? onReturn,
    Object? extra,
  }) {
    final goRouter = locator<GoRouter>();
    final uri = goRouter.routerDelegate.currentConfiguration.uri;
    _resultGoRouter[uri.path] = null;
    go(path, extra: extra);
    void listener() => _watchRouteChange(uri.path, onReturn, listener);
    goRouter.routerDelegate.addListener(listener);
  }

  Future<void> pushWithResult(
    String path, {
    GoRouterCallbackReturn? onReturn,
    Object? extra,
  }) async {
    final goRouter = locator<GoRouter>();
    final uri = goRouter.routerDelegate.currentConfiguration.uri;
    _resultGoRouter[uri.path] = null;
    push(path, extra: extra);
    void listener() => _watchRouteChange(uri.path, onReturn, listener);
    goRouter.routerDelegate.addListener(listener);
  }

  void popWithResult(dynamic result) {
    final previousPath = getPreviousPathResultAvailable();
    if (previousPath != null) {
      setResultForPath(previousPath, result: result);
    }
    pop();
  }

  bool isPathResultAvailable(String path) =>
      _resultGoRouter.keys.firstWhereOrNull((element) => element == path) !=
      null;

  String? getPreviousPathResultAvailable() {
    final goRouter = locator<GoRouter>();
    final uri = goRouter.routerDelegate.currentConfiguration.uri;
    final splitPath = List.from(uri.path.split('/'))..removeLast();
    final path = splitPath.join('/');
    for (final element in _resultGoRouter.keys) {
      if (path == element) return element;
    }
    return null;
  }

  String? getPathResultAvailable({String? path}) {
    final goRouter = locator<GoRouter>();
    final uri = goRouter.routerDelegate.currentConfiguration.uri;
    if (path != null) {
      if (uri.path == path) return path;
    } else {
      for (final element in _resultGoRouter.keys) {
        if (uri.path.contains(element)) return element;
      }
    }
    return null;
  }

  void setResultForPath(String path, {required dynamic result}) {
    assert(
      () {
        return isPathResultAvailable(path);
      }(),
      'You dont have a listener on this path',
    );
    _resultGoRouter[path] = result;
  }

  void backUntilAndGo({
    required String backUntil,
    required String path,
    Map<String, String>? queryParameters,
  }) {
    final goRouter = locator<GoRouter>();
    final currentUrl = goRouter.routerDelegate.currentConfiguration.uri;

    final paths = currentUrl.path.split('/');
    final indexCheckpointDetail = paths.indexOf(backUntil) + 1;

    paths
      ..removeRange(
        indexCheckpointDetail,
        paths.length,
      )
      ..add(path);

    go(paths.join('/').withQueryParameters(queryParameters ?? {}));
  }
}
