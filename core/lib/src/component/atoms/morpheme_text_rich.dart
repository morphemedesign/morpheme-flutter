import 'package:flutter/material.dart';

import 'morpheme_text.dart';

class MorphemeTextRich extends StatelessWidget {
  const MorphemeTextRich.displayLarge({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.displayLarge;

  const MorphemeTextRich.displayMedium({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.displayMedium;
  const MorphemeTextRich.displaySmall({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.displaySmall;
  const MorphemeTextRich.headlineLarge({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.headlineLarge;
  const MorphemeTextRich.headlineMedium({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.headlineMedium;
  const MorphemeTextRich.headlineSmall({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.headlineSmall;
  const MorphemeTextRich.titleLarge({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.titleLarge;
  const MorphemeTextRich.titleMedium({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.titleMedium;
  const MorphemeTextRich.titleSmall({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.titleSmall;
  const MorphemeTextRich.labelLarge({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.labelLarge;
  const MorphemeTextRich.labelMedium({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.labelMedium;
  const MorphemeTextRich.labelSmall({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.labelSmall;
  const MorphemeTextRich.bodyLarge({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.bodyLarge;
  const MorphemeTextRich.bodyMedium({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.bodyMedium;
  const MorphemeTextRich.bodySmall({
    super.key,
    required this.children,
    this.text,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.bodySmall;

  final String? text;
  final List<TextSpan> children;
  final TextStyle? style;
  final MorphemeTextTheme textTheme;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: text, children: children),
      style: textTheme.textStyle
          .copyWith(color: color, fontWeight: fontWeight)
          .merge(style),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
