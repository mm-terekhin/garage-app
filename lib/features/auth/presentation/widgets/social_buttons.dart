import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage/core/services/my_icons.dart';
import '../../../../app/app.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _Button(
          icon: MyIcons.phoneIcon,
          onTap: () {},
        ),
        SizedBox(
          width: theme.spacings.x4,
        ),
        _Button(
          icon: MyIcons.appleIcon,
          onTap: () {},
        ),
        SizedBox(
          width: theme.spacings.x4,
        ),
        _Button(
          icon: MyIcons.googleIcon,
          onTap: () {},
        ),
      ],
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.all(
        theme.radii.x2,
      ),
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(
          theme.spacings.x1,
        ),
        decoration: BoxDecoration(
          color: theme.palette.bgContrast,
          borderRadius: BorderRadius.all(
            theme.radii.x2,
          ),
        ),
        padding: EdgeInsets.all(
          theme.spacings.x2,
        ),
        width: theme.spacings.x10,
        height: theme.spacings.x10,
        child: Center(
          child: Icon(
            icon,
            color: theme.palette.iconContrast,
          ),
        ),
      ),
    );
  }
}
