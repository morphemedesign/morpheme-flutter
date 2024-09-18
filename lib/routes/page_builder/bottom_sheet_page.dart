import 'package:flutter/material.dart';

class BottomSheetPage<T> extends Page<T> {
  const BottomSheetPage({
    required this.builder,
    this.title,
    this.showCloseButton = false,
    this.backgroundColor,
    this.barrierLabel,
    this.elevation,
    this.shape,
    this.clipBehavior,
    this.constraints,
    this.barrierColor,
    this.isScrollControlled = true,
    this.scrollControlDisabledMaxHeightRatio = 9.0 / 16.0,
    this.useRootNavigator = true,
    this.isDismissible = true,
    this.enableDrag = true,
    this.showDragHandle,
    this.useSafeArea = false,
    this.transitionAnimationController,
    this.anchorPoint,
    this.sheetAnimationStyle,
  });

  final String? title;
  final bool showCloseButton;

  final WidgetBuilder builder;
  final Color? backgroundColor;
  final String? barrierLabel;
  final double? elevation;
  final ShapeBorder? shape;
  final Clip? clipBehavior;
  final BoxConstraints? constraints;
  final Color? barrierColor;
  final bool isScrollControlled;
  final double scrollControlDisabledMaxHeightRatio;
  final bool useRootNavigator;
  final bool isDismissible;
  final bool enableDrag;
  final bool? showDragHandle;
  final bool useSafeArea;
  final AnimationController? transitionAnimationController;
  final Offset? anchorPoint;
  final AnimationStyle? sheetAnimationStyle;

  @override
  Route<T> createRoute(BuildContext context) {
    final NavigatorState navigator =
        Navigator.of(context, rootNavigator: useRootNavigator);
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);

    return ModalBottomSheetRoute<T>(
      builder: builder,
      capturedThemes:
          InheritedTheme.capture(from: context, to: navigator.context),
      isScrollControlled: isScrollControlled,
      scrollControlDisabledMaxHeightRatio: scrollControlDisabledMaxHeightRatio,
      barrierLabel: barrierLabel ?? localizations.scrimLabel,
      barrierOnTapHint:
          localizations.scrimOnTapHint(localizations.bottomSheetLabel),
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints ??
          BoxConstraints(
            maxHeight: MediaQuery.sizeOf(context).height - kToolbarHeight,
          ),
      isDismissible: isDismissible,
      modalBarrierColor:
          barrierColor ?? Theme.of(context).bottomSheetTheme.modalBarrierColor,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      settings: this,
      transitionAnimationController: transitionAnimationController,
      anchorPoint: anchorPoint,
      useSafeArea: useSafeArea,
      sheetAnimationStyle: sheetAnimationStyle,
    );
  }
}
