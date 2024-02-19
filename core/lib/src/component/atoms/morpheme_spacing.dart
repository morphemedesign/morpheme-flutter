import 'package:flutter/material.dart';

class MorphemeSpacing extends StatelessWidget {
  const MorphemeSpacing.vertical({
    super.key,
    required this.size,
  }) : axis = Axis.vertical;
  const MorphemeSpacing.vertical4({super.key})
      : size = 4,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical8({super.key})
      : size = 8,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical12({super.key})
      : size = 12,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical16({super.key})
      : size = 16,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical20({super.key})
      : size = 20,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical24({super.key})
      : size = 24,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical28({super.key})
      : size = 28,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical32({super.key})
      : size = 32,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical36({super.key})
      : size = 36,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical40({super.key})
      : size = 40,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical44({super.key})
      : size = 44,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical48({super.key})
      : size = 48,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical52({super.key})
      : size = 52,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical56({super.key})
      : size = 56,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical60({super.key})
      : size = 60,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical64({super.key})
      : size = 64,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical68({super.key})
      : size = 68,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical72({super.key})
      : size = 72,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical76({super.key})
      : size = 76,
        axis = Axis.vertical;
  const MorphemeSpacing.vertical80({super.key})
      : size = 80,
        axis = Axis.vertical;

  const MorphemeSpacing.horizontal({
    super.key,
    required this.size,
  }) : axis = Axis.horizontal;
  const MorphemeSpacing.horizontal4({super.key})
      : size = 4,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal8({super.key})
      : size = 8,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal12({super.key})
      : size = 12,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal16({super.key})
      : size = 16,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal20({super.key})
      : size = 20,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal24({super.key})
      : size = 24,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal28({super.key})
      : size = 28,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal32({super.key})
      : size = 32,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal36({super.key})
      : size = 36,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal40({super.key})
      : size = 40,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal44({super.key})
      : size = 44,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal48({super.key})
      : size = 48,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal52({super.key})
      : size = 52,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal56({super.key})
      : size = 56,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal60({super.key})
      : size = 60,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal64({super.key})
      : size = 64,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal68({super.key})
      : size = 68,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal72({super.key})
      : size = 72,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal76({super.key})
      : size = 76,
        axis = Axis.horizontal;
  const MorphemeSpacing.horizontal80({super.key})
      : size = 80,
        axis = Axis.horizontal;

  final double size;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return axis == Axis.horizontal
        ? SizedBox(width: size)
        : SizedBox(height: size);
  }
}
