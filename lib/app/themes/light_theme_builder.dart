import 'package:flutter/material.dart';
import 'package:garage/app/app.dart';

class LightThemeBuilder implements ThemeBuilder {
  @override
  ThemeData build({
    Radii radii = const Radii.regular(),
    Palette palette = const Palette.light(),
    Spacings spacings = const Spacings.regular(),
  }) {
    const fontFamily = 'Rubik';
    final textTheme = _defaultTextTheme.apply();

    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamily,
      appBarTheme: appBarThemeBuilder(
        palette: palette,
        spacings: spacings,
        radii: radii,
        textTheme: textTheme,
      ),
      scaffoldBackgroundColor: palette.bgPrimary,
      textTheme: textTheme,
      progressIndicatorTheme: _progressIndicatorThemeDataBuilder(
        palette: palette,
      ),
      elevatedButtonTheme: _elevatedButtonThemeDataBuild(
        palette: palette,
        spacings: spacings,
        radii: radii,
        textTheme: textTheme,
      ),
      textButtonTheme: _textButtonThemeDataBuilder(
        palette: palette,
        spacings: spacings,
        radii: radii,
        textTheme: textTheme,
      ),
    );
  }

  AppBarTheme appBarThemeBuilder({
    required Palette palette,
    required Spacings spacings,
    required Radii radii,
    required TextTheme textTheme,
  }) {
    return AppBarTheme(
      centerTitle: true,
      backgroundColor: palette.bgPrimary,
      scrolledUnderElevation: 0,
      elevation: 0,
      titleTextStyle: textTheme.titleLarge!.copyWith(
        color: palette.textPrimary,
      ),
    );
  }

  ElevatedButtonThemeData _elevatedButtonThemeDataBuild({
    required Palette palette,
    required Spacings spacings,
    required Radii radii,
    required TextTheme textTheme,
  }) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        /*shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(radii.x2),
          ),
        ),*/
        backgroundColor: const MaterialStatePropertyAll<Color>(
          Colors.transparent,
        ),
        padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
            vertical: spacings.x3,
            horizontal: spacings.x7,
          ),
        ),
        textStyle: MaterialStatePropertyAll<TextStyle>(
          textTheme.titleMedium!.copyWith(
            color: palette.textContrast,
          ),
        ),
      ),
    );
  }

  TextButtonThemeData _textButtonThemeDataBuilder({
    required Palette palette,
    required Spacings spacings,
    required Radii radii,
    required TextTheme textTheme,
  }) {
    return TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(radii.x2),
          ),
        ),
        padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
            vertical: spacings.x3,
            horizontal: spacings.x7,
          ),
        ),
        textStyle: MaterialStatePropertyAll<TextStyle>(
          textTheme.titleMedium!,
        ),
      ),
    );
  }

  ProgressIndicatorThemeData _progressIndicatorThemeDataBuilder({
    required Palette palette,
  }) {
    return ProgressIndicatorThemeData(
      color: palette.bgContrast,
    );
  }

  TextTheme get _defaultTextTheme => const TextTheme(
        displayLarge: TextStyle(),
        displayMedium: TextStyle(),
        displaySmall: TextStyle(),
        headlineLarge: TextStyle(
          fontSize: 64,
          height: 44 / 64,
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(),
        headlineSmall: TextStyle(),
        titleLarge: TextStyle(
          fontSize: 20,
          height: 28 / 20,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          height: 24 / 18,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          height: 20 / 14,
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          height: 20 / 14,
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          height: 16 / 12,
          letterSpacing: 0.5,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          height: 16 / 11,
          letterSpacing: 0,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          height: 24 / 16,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          height: 20 / 14,
          letterSpacing: 0.25,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          height: 16 / 12,
          letterSpacing: 0.4,
          fontWeight: FontWeight.w400,
        ),
      );
}