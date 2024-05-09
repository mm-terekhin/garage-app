import 'package:flutter/material.dart';
import 'package:garage/app/app.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.onPressed,
    required this.title,
    super.key,
  });

  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.palette.bgContrast,
            theme.palette.bgPrimary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.all(
          theme.radii.x10,
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.palette.textContrast,
          ),
        ),
      ),
    );
  }
}
