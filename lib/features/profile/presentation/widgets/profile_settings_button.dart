import 'package:flutter/material.dart';
import 'package:garage/app/app.dart';

class ProfileSettingsButton extends StatelessWidget {
  const ProfileSettingsButton({
    super.key,
    required this.onTap,
    required this.title,
    this.margin,
  });

  final void Function() onTap;
  final String title;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: margin ??  EdgeInsets.only(
        bottom: theme.spacings.x2,
      ),
      child: InkWell(
        borderRadius: BorderRadius.all(
          theme.radii.x4,
        ),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: theme.spacings.x3,
            horizontal: theme.spacings.x4,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.palette.borderPrimary,
            ),
            borderRadius: BorderRadius.all(
              theme.radii.x4,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.palette.textSecondary,
                ),
              ),
              Icon(
                Icons.navigate_next_outlined,
                color: theme.palette.iconPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
