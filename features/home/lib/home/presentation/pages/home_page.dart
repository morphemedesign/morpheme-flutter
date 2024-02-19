import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with MorphemeStatePage<HomePage, HomeCubit> {
  @override
  HomeCubit setCubit() => locator<HomeCubit>();

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<HomeCubit>().onAddPressed(context),
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              context.selectedTheme == MorphemeThemeLight()
                  ? MorphemeImages.logoLight
                  : MorphemeImages.logoDark,
              width: context.widthPercentage(50),
            ),
            const MorphemeSpacing.vertical24(),
            MorphemeText.titleLarge(context.s.awesome),
            const MorphemeSpacing.vertical16(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MorphemeText.bodyMedium(context.s.language),
                const MorphemeSpacing.horizontal16(),
                DropdownButton<Locale>(
                  isDense: true,
                  value: context.selectedLocale,
                  items: const [
                    DropdownMenuItem(
                      value: Locale('en'),
                      child: Text('English'),
                    ),
                    DropdownMenuItem(
                      value: Locale('id'),
                      child: Text('Indonesia'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) context.changeLocale(value);
                  },
                ),
              ],
            ),
            const MorphemeSpacing.vertical16(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MorphemeText.bodyMedium(context.s.theme),
                const MorphemeSpacing.horizontal16(),
                DropdownButton<MorphemeTheme>(
                  isDense: true,
                  value: context.selectedTheme,
                  items: [
                    DropdownMenuItem(
                      value: MorphemeThemeLight(),
                      child: const Text('Ligth'),
                    ),
                    DropdownMenuItem(
                      value: MorphemeThemeDark(),
                      child: const Text('Dark'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) context.changeTheme(value);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
