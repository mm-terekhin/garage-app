import 'package:flutter/material.dart';
import 'package:garage/app/app.dart';
import 'package:garage/app/i18n/strings.g.dart';
import 'package:garage/features/features.dart';

import '../../../../shared/domain/domain.dart';

class MyGarageView extends StatelessWidget {
  const MyGarageView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: theme.spacings.x4,
        vertical: theme.spacings.x6,
      ),
      children: [
        ...Liquids.values.map(
          (e) => TICard(
            margin: EdgeInsets.only(
              bottom: theme.spacings.x4,
            ),
            title: e.toText(
              context.i18n,
            ),
            form: e.toForm(),
          ),
        ),
      ],
    );
  }
}
