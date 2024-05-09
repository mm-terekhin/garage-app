import 'package:flutter/material.dart';
import 'package:garage/app/app.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: theme.palette.bgContrast,
            borderRadius: BorderRadius.all(
              theme.radii.x4,
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: theme.spacings.x4,
            horizontal: theme.spacings.x5,
          ),
          child: Text(
            context.l10n.gLogo,
            style: theme.textTheme.headlineLarge?.copyWith(
              fontFamily: 'SairaStencilOne',
              color: theme.palette.textContrast,
            ),
          ),
        ),
        SizedBox(width: theme.spacings.x1,),
        Text(
          context.l10n.otherLogo,
          style: theme.textTheme.headlineLarge?.copyWith(
            fontFamily: 'SairaStencilOne',
          ),
        ),
      ],
    );
  }
}
