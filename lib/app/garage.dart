import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:garage/app/app.dart';
import 'package:get_it/get_it.dart';
import 'i18n/strings.g.dart';

class Garage extends StatefulWidget {
  const Garage({super.key});

  @override
  State<Garage> createState() => _GarageState();
}

class _GarageState extends State<Garage> {
  @override
  Widget build(BuildContext context) {
    return GlobalBlocInjector(
      child: MaterialApp.router(
        routerConfig: GetIt.instance<AppRouter>().router,
        debugShowCheckedModeBanner: false,
        theme: LightThemeBuilder().build(),
        locale: TranslationProvider.of(context).flutterLocale,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: AppLocaleUtils.supportedLocales,
      ),
    );
  }
}
