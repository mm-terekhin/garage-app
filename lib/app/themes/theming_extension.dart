import 'package:flutter/material.dart';
import 'package:garage/app/app.dart';

extension ThemingExtension on ThemeData {
  Palette get palette => extension<Palette>() ?? Palette.light();

  Radii get radii => extension<Radii>() ?? const Radii.regular();

  Spacings get spacings => extension<Spacings>() ?? const Spacings.regular();
}
