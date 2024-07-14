import 'package:flutter/material.dart';

import '../../../app/i18n/strings.g.dart';
import '../presentation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.location,
    required this.child,
  });

  final String location;
  final Widget child;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: HomeAppBar(
        title: _getTitle(context),
      ),
      body: SafeArea(
        child: child,
      ),
      bottomNavigationBar: HomeNavBar(
        location: location,
      ),
    );
  }

  String _getTitle(BuildContext context) {
    switch (location) {
      case '/':
        return context.i18n.homeNavBarLabel;
      case '/my_garage':
        return context.i18n.garageNavBarLabel;
      case '/chats':
        return context.i18n.chatsNavBarLabel;
      case '/profile':
        return context.i18n.profileNavBarLabel;
      default:
        return '';
    }
  }
}

class HomeInheritedWidget extends InheritedWidget {
  const HomeInheritedWidget({
    super.key,
    required super.child,
    required this.isTablet,
  });

  final bool isTablet;

  static HomeInheritedWidget? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<HomeInheritedWidget>();

  static HomeInheritedWidget of(BuildContext context) {
    final inherWidget = maybeOf(context);

    assert(inherWidget == null, 'HomeInheritedWidget is null');

    return inherWidget!;
  }

  @override
  bool updateShouldNotify(covariant HomeInheritedWidget oldWidget) =>
      oldWidget.isTablet != isTablet;
}
