import 'package:flutter/material.dart';
import 'package:garage/app/app.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      iconTheme: IconThemeData(
        color: theme.palette.iconSecondary,
      ),
      backgroundColor: theme.palette.bgPrimary,
      title: Text(
        title,
        style: theme.textTheme.titleMedium,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
