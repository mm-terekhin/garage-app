import 'package:flutter/material.dart';
import 'package:garage/app/app.dart';
import 'package:garage/app/i18n/strings.g.dart';
import 'package:go_router/go_router.dart';

import '../../../core/core.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({
    required this.location,
    super.key,
  });

  final String location;

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      elevation: theme.spacings.x4,
      child: SizedBox(
        height: theme.spacings.x20 + theme.spacings.x5,
        child: NavigationBar(
          selectedIndex: switchCurrentIndex(
            widget.location,
          ),
          onDestinationSelected: (index) {
            final location = _getLocation(index);
            GoRouter.of(context).replaceNamed(location);
          },
          indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              theme.radii.x10,
            ),
          ),
          destinations: [
            NavigationDestination(
              label: context.i18n.homeNavBarLabel,
              icon: const Icon(MyIcons.homeIcon),
            ),
            NavigationDestination(
              label: context.i18n.garageNavBarLabel,
              icon: const Icon(MyIcons.garageIcon),
            ),
            NavigationDestination(
              label: context.i18n.chatsNavBarLabel,
              icon: const Icon(MyIcons.chatIcon),
            ),
            NavigationDestination(
              label: context.i18n.profileNavBarLabel,
              icon: const Icon(MyIcons.profileIcon),
            ),
          ],
        ),
      ),
    );
  }

  int switchCurrentIndex(String location) {
    switch (location) {
      case '/':
        return 0;
      case '/my_garage':
        return 1;
      case '/chats':
        return 2;
      case '/profile':
        return 3;
      default:
        return 0;
    }
  }

  String _getLocation(int index) {
    switch (index) {
      case 0:
        return 'news';
      case 1:
        return 'my_garage';
      case 2:
        return 'chats';
      case 3:
        return 'profile';
      default:
        throw ArgumentError('the index $index is unsupported');
    }
  }
}
