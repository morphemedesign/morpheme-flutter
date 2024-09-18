import 'package:core/core.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  void onNavigationBarPressed(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    context.selectedTheme;

    return Scaffold(
      key: const ValueKey(ConstantDataTesId.pageMain),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: context.color.grey,
        selectedItemColor: context.color.primary,
        backgroundColor: context.color.white,
        currentIndex: navigationShell.currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: context.s.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.newspaper),
            label: context.s.news,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: context.s.profile,
          ),
        ],
        onTap: (index) => onNavigationBarPressed(context, index),
      ),
    );
  }
}
