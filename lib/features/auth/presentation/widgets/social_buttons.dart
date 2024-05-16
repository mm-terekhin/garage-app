import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../app/app.dart';
import '../../../../app/i18n/strings.g.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _Button(
          icon: AssetsNames.phoneIcon,
          onTap: () {},
        ),
        SizedBox(
          width: theme.spacings.x4,
        ),
        _Button(
          icon: AssetsNames.appleIcon,
          onTap: () {},
        ),
        SizedBox(
          width: theme.spacings.x4,
        ),
        _Button(
          icon: AssetsNames.googleIcon,
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

  final String icon;
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
          child: SvgPicture.asset(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
