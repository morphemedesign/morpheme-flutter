import 'package:flutter/material.dart';

enum MorphemeTextTheme {
  displayLarge(
    TextStyle(
      fontSize: 57.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      height: 1.12,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  displayMedium(
    TextStyle(
      fontSize: 45.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.16,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  displaySmall(
    TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.22,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  headlineLarge(
    TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.25,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  headlineMedium(
    TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.29,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  headlineSmall(
    TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  titleLarge(
    TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.27,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  titleMedium(
    TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      height: 1.50,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  titleSmall(
    TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  labelLarge(
    TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  labelMedium(
    TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  labelSmall(
    TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.45,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  bodyLarge(
    TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      height: 1.50,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  bodyMedium(
    TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      height: 1.43,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  ),
  bodySmall(
    TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.even,
    ),
  );

  const MorphemeTextTheme(this.textStyle);

  final TextStyle textStyle;

  static TextTheme get textTheme => TextTheme(
        displayLarge: MorphemeTextTheme.displayLarge.textStyle,
        displayMedium: MorphemeTextTheme.displayMedium.textStyle,
        displaySmall: MorphemeTextTheme.displaySmall.textStyle,
        headlineLarge: MorphemeTextTheme.headlineLarge.textStyle,
        headlineMedium: MorphemeTextTheme.headlineMedium.textStyle,
        headlineSmall: MorphemeTextTheme.headlineSmall.textStyle,
        titleLarge: MorphemeTextTheme.titleLarge.textStyle,
        titleMedium: MorphemeTextTheme.titleMedium.textStyle,
        titleSmall: MorphemeTextTheme.titleSmall.textStyle,
        labelLarge: MorphemeTextTheme.labelLarge.textStyle,
        labelMedium: MorphemeTextTheme.labelMedium.textStyle,
        labelSmall: MorphemeTextTheme.labelSmall.textStyle,
        bodyLarge: MorphemeTextTheme.bodyLarge.textStyle,
        bodyMedium: MorphemeTextTheme.bodyMedium.textStyle,
        bodySmall: MorphemeTextTheme.bodySmall.textStyle,
      );
}

class MorphemeText extends StatelessWidget {
  const MorphemeText.displayLarge(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.displayLarge;
  const MorphemeText.displayMedium(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.displayMedium;
  const MorphemeText.displaySmall(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.displaySmall;
  const MorphemeText.headlineLarge(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.headlineLarge;
  const MorphemeText.headlineMedium(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.headlineMedium;
  const MorphemeText.headlineSmall(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.headlineSmall;
  const MorphemeText.titleLarge(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.titleLarge;
  const MorphemeText.titleMedium(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.titleMedium;
  const MorphemeText.titleSmall(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.titleSmall;
  const MorphemeText.labelLarge(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.labelLarge;
  const MorphemeText.labelMedium(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.labelMedium;
  const MorphemeText.labelSmall(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.labelSmall;
  const MorphemeText.bodyLarge(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.bodyLarge;
  const MorphemeText.bodyMedium(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.bodyMedium;
  const MorphemeText.bodySmall(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.color,
    this.fontWeight,
  }) : textTheme = MorphemeTextTheme.bodySmall;

  final String text;
  final TextStyle? style;
  final MorphemeTextTheme textTheme;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textTheme.textStyle
          .copyWith(color: color, fontWeight: fontWeight)
          .merge(style),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
