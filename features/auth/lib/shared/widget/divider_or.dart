import 'package:core/core.dart';
import 'package:flutter/material.dart';

class DividerOr extends StatelessWidget {
  const DividerOr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: _Line(key: ValueKey('dividerLine'))),
        const MorphemeSpacing.horizontal16(),
        MorphemeText.labelLarge(context.s.or),
        const MorphemeSpacing.horizontal16(),
        const Expanded(child: _Line(key: ValueKey('dividerLine'))),
      ],
    );
  }
}

class _Line extends StatelessWidget {
  const _Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.color.grey1,
      width: double.infinity,
      height: 1,
    );
  }
}
