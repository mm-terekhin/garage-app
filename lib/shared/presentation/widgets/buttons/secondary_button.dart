import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    required this.onPressed,
    required this.title,
    this.style,
    this.textStyle,
    super.key,
  });

  final void Function()? onPressed;
  final String title;
  final ButtonStyle? style;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextButton(
      style: style,
      onPressed: onPressed,
      child: Text(
        title,
        style: textStyle ?? theme.textTheme.titleMedium,
      ),
    );
  }
}
