import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../cubit/selling_cubit.dart';

class SellingPage extends StatefulWidget {
  const SellingPage({super.key});

  @override
  State<SellingPage> createState() => _SellingPageState();
}

class _SellingPageState extends State<SellingPage>
    with MorphemeStatePage<SellingPage, SellingCubit> {
  @override
  SellingCubit setCubit() => locator<SellingCubit>();

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.s.selling)),
      body: Padding(
        padding: const EdgeInsets.all(MorphemeSizes.s16),
        child: Center(
          child: MorphemeButton.elevated(
            text: context.s.backWithResult,
            onPressed: () =>
                context.read<SellingCubit>().onBackWithResult(context),
          ),
        ),
      ),
    );
  }
}
