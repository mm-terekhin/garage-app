import 'package:flutter/material.dart';
import 'package:garage/app/app.dart';

class SimpleField extends StatelessWidget {
  const SimpleField({
    this.labelText = '',
    this.numLines = 1,
    this.autoFocus = false,
    this.obscureText = false,
    this.initialValue,
    this.labelStyle,
    this.maxLength,
    this.keyboardType,
    this.onChanged,
    this.onSubmit,
    this.onTap,
    this.errorText,
    this.hintText,
    this.controller,
    this.suffixIcon,
    this.readOnly = false,
    this.focusNode,
    this.enabled,
    this.padding,
    super.key,
  });

  final String? initialValue;
  final String labelText;
  final TextStyle? labelStyle;
  final int numLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final void Function(String value)? onChanged;
  final void Function(String value)? onSubmit;
  final void Function()? onTap;
  final String? errorText;
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final bool autoFocus;
  final bool readOnly;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final bool? enabled;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: padding ??
          EdgeInsets.only(
            bottom: theme.spacings.x5,
          ),
      child: TextFormField(
        enabled: enabled,
        focusNode: focusNode,
        readOnly: readOnly,
        controller: controller,
        keyboardType: keyboardType,
        onFieldSubmitted: onSubmit,
        onChanged: onChanged,
        onTap: onTap,
        initialValue: initialValue,
        autofocus: autoFocus,
        minLines: numLines,
        maxLines: numLines,
        obscureText: obscureText,
        style: theme.textTheme.bodyMedium,
        decoration: InputDecoration(
          errorText: errorText,
          labelText: labelText,
          hintText: hintText,
          errorStyle: theme.textTheme.bodyMedium?.copyWith(
            color: theme.palette.textError,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              theme.radii.x2,
            ),
            borderSide: BorderSide(
              color: theme.palette.borderError,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              theme.radii.x2,
            ),
            borderSide: BorderSide(
              color: theme.palette.borderError,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              theme.radii.x2,
            ),
            borderSide: BorderSide(
              color: theme.palette.borderPrimary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              theme.radii.x2,
            ),
            borderSide: BorderSide(
              color: theme.palette.borderPrimary,
            ),
          ),
          filled: true,
          fillColor: theme.palette.bgPrimary,
          labelStyle: theme.textTheme.bodyLarge?.copyWith(
            color: theme.palette.textSecondary,
          ),
          floatingLabelStyle: theme.textTheme.bodyLarge!.copyWith(
            color: theme.palette.textSecondary,
          ),
          contentPadding: EdgeInsets.only(
            top: theme.spacings.x2,
            bottom: theme.spacings.x2,
            left: theme.spacings.x5,
            right: theme.spacings.x8,
          ),
        ),
      ),
    );
  }
}
