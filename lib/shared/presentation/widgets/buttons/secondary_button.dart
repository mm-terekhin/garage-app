import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    required this.onPressed,
    required this.title,
    super.key,
  });

  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: theme.textTheme.titleMedium,
      ),
    );
  }
}
