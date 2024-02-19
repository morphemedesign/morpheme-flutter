import 'package:dependency_manager/dependency_manager.dart' show GetIt;
import 'package:flutter/material.dart';

final GetIt locator = GetIt.instance;
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
