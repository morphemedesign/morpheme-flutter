import 'package:flutter/material.dart';

class MorphemeSliverSpacing extends StatelessWidget {
  const MorphemeSliverSpacing.vertical({
    super.key,
    required this.size,
  }) : axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical4({super.key})
      : size = 4,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical8({super.key})
      : size = 8,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical12({super.key})
      : size = 12,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical16({super.key})
      : size = 16,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical20({super.key})
      : size = 20,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical24({super.key})
      : size = 24,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical28({super.key})
      : size = 28,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical32({super.key})
      : size = 32,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical36({super.key})
      : size = 36,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical40({super.key})
      : size = 40,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical44({super.key})
      : size = 44,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical48({super.key})
      : size = 48,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical52({super.key})
      : size = 52,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical56({super.key})
      : size = 56,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical60({super.key})
      : size = 60,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical64({super.key})
      : size = 64,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical68({super.key})
      : size = 68,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical72({super.key})
      : size = 72,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical76({super.key})
      : size = 76,
        axis = Axis.vertical;
  const MorphemeSliverSpacing.vertical80({super.key})
      : size = 80,
        axis = Axis.vertical;

  const MorphemeSliverSpacing.horizontal({
    super.key,
    required this.size,
  }) : axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal4({super.key})
      : size = 4,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal8({super.key})
      : size = 8,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal12({super.key})
      : size = 12,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal16({super.key})
      : size = 16,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal20({super.key})
      : size = 20,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal24({super.key})
      : size = 24,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal28({super.key})
      : size = 28,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal32({super.key})
      : size = 32,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal36({super.key})
      : size = 36,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal40({super.key})
      : size = 40,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal44({super.key})
      : size = 44,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal48({super.key})
      : size = 48,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal52({super.key})
      : size = 52,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal56({super.key})
      : size = 56,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal60({super.key})
      : size = 60,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal64({super.key})
      : size = 64,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal68({super.key})
      : size = 68,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal72({super.key})
      : size = 72,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal76({super.key})
      : size = 76,
        axis = Axis.horizontal;
  const MorphemeSliverSpacing.horizontal80({super.key})
      : size = 80,
        axis = Axis.horizontal;

  final double size;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return axis == Axis.horizontal
        ? SliverToBoxAdapter(child: SizedBox(width: size))
        : SliverToBoxAdapter(child: SizedBox(height: size));
  }
}
