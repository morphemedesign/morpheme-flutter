import 'package:core/src/component/atoms/morpheme_spacing.dart';
import 'package:core/src/component/molecules/morpheme_status_message.dart';
import 'package:core/src/extensions/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'show_status_message.dart';
import 'validator_value.dart';

extension GlobalKeyMorphemeTextFieldStateExtension
    on GlobalKey<MorphemeTextFieldState> {
  String get text => currentState?.controller.text ?? '';
  set text(String value) => currentState?.setText(value);
  bool get isValid => currentState?.isValid ?? false;
  void validate() => currentState?.validate();
  void requestFocus() => currentState?.requestFocus();
  void clear() => currentState?.setText('');
}

extension ValidatorExtension on ValidatorValue? {
  bool isValid() =>
      this == null ||
      this?.showStatusMessage == ShowStatusMessage.none ||
      this?.showStatusMessage == ShowStatusMessage.success;
}

class MorphemeTextField extends StatefulWidget {
  const MorphemeTextField({
    super.key,
    this.textfieldKey,
    this.obscureIconKey,
    this.title,
    this.decoration = const InputDecoration(),
    this.controller,
    this.inputFormatters,
    this.focusNode,
    this.keyboardType,
    this.autofocus = false,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.readOnly = false,
    this.style,
    this.textAlign = TextAlign.start,
    this.textCapitalization = TextCapitalization.none,
    this.validator,
    this.isPassword = false,
    this.textInputAction = TextInputAction.done,
    this.isAutoValidate = false,
  });

  final Key? textfieldKey;
  final Key? obscureIconKey;
  final String? title;
  final InputDecoration decoration;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final bool autofocus;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onEditingComplete;
  final GestureTapCallback? onTap;
  final bool readOnly;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextCapitalization textCapitalization;
  final ValidatorValue? Function(BuildContext context, String)? validator;
  final bool isPassword;
  final TextInputAction textInputAction;
  final bool isAutoValidate;

  @override
  State<MorphemeTextField> createState() => MorphemeTextFieldState();
}

class MorphemeTextFieldState extends State<MorphemeTextField> {
  late TextEditingController controller;
  late FocusNode focusNode;

  bool obscureText = false;
  bool isAutoValidate = false;

  ValidatorValue validatorValue = ValidatorValue.none;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? TextEditingController();
    focusNode = widget.focusNode ?? FocusNode();
    if (widget.isPassword) {
      obscureText = true;
    }

    isAutoValidate = widget.isAutoValidate;
  }

  @override
  void dispose() {
    try {
      focusNode.dispose();
      controller.dispose();
    } catch (e) {
      if (kDebugMode) print(e.toString());
    }
    super.dispose();
  }

  void requestFocus() {
    focusNode.requestFocus();
  }

  bool get isValid => validatorValue.isValid();
  void validate({String? value}) {
    final validatorValue =
        widget.validator?.call(context, value ?? controller.text);

    if (validatorValue?.showStatusMessage == ShowStatusMessage.error) {
      requestFocus();
      setState(() {
        isAutoValidate = true;
      });
    }

    if (validatorValue != null) {
      if (this.validatorValue != validatorValue) {
        setState(() {
          this.validatorValue = validatorValue;
        });
      }
    } else if (this.validatorValue.showStatusMessage !=
        ShowStatusMessage.none) {
      setState(() {
        this.validatorValue = ValidatorValue.none;
      });
    }
  }

  void setText(String value) {
    controller.text = value;
    if (isAutoValidate) validate(value: value);
    setState(() {});
  }

  void onChanged(String value) {
    if (isAutoValidate) validate(value: value);
    widget.onChanged?.call(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.title != null)
          Text(widget.title!, style: context.labelLarge),
        if (widget.title != null) const MorphemeSpacing.vertical8(),
        TextField(
          key: widget.textfieldKey,
          controller: controller,
          decoration: widget.decoration.copyWith(
            suffixIcon: widget.isPassword
                ? IconButton(
                    key: widget.obscureIconKey,
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                  )
                : widget.decoration.suffixIcon,
          ),
          onChanged: onChanged,
          inputFormatters: widget.inputFormatters,
          focusNode: focusNode,
          keyboardType: widget.keyboardType,
          autofocus: widget.autofocus,
          maxLength: widget.maxLength,
          maxLines: widget.isPassword ? 1 : widget.maxLines,
          minLines: widget.minLines,
          obscureText: obscureText,
          onSubmitted: widget.onSubmitted,
          onEditingComplete: widget.onEditingComplete,
          onTap: widget.onTap,
          readOnly: widget.readOnly,
          style: widget.style,
          textAlign: widget.textAlign,
          textCapitalization: widget.textCapitalization,
          textInputAction: widget.textInputAction,
        ),
        if (validatorValue.showStatusMessage == ShowStatusMessage.error)
          MorphemeStatusMessage.error(
              context: context, text: validatorValue.message),
        if (validatorValue.showStatusMessage == ShowStatusMessage.info)
          MorphemeStatusMessage.info(
              context: context, text: validatorValue.message),
        if (validatorValue.showStatusMessage == ShowStatusMessage.success)
          MorphemeStatusMessage.success(
              context: context, text: validatorValue.message),
        if (validatorValue.showStatusMessage == ShowStatusMessage.warning)
          MorphemeStatusMessage.warning(
              context: context, text: validatorValue.message),
      ],
    );
  }
}
