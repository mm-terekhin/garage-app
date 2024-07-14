import 'package:flutter/material.dart';
import 'package:garage/app/app.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: theme.spacings.x20 + theme.spacings.x10,
      width: theme.spacings.x20 + theme.spacings.x10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: theme.palette.borderPrimary,
        ),
      ),
    );
  }
}
