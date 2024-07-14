import 'package:flutter/material.dart';

import '../../../../app/i18n/strings.g.dart';
import '../../../../shared/presentation/presentation.dart';

class NotificationSettingsView extends StatelessWidget {
  const NotificationSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        title: context.i18n.profile.notificationsButtonLabel,
      ),
    );
  }
}
