import 'package:flutter/material.dart';
import 'package:garage/app/i18n/strings.g.dart';
import 'package:garage/shared/presentation/presentation.dart';

class LocalizationSettingsView extends StatelessWidget {
  const LocalizationSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        title: context.i18n.profile.languageButtonLabel,
      ),
    );
  }
}
