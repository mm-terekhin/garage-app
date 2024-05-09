import 'package:flutter/material.dart';

import '../app.dart';

abstract interface class ThemeBuilder {
  ThemeData build({
    Radii radii = const Radii.regular(),
    Palette palette = const Palette.light(),
    Spacings spacings = const Spacings.regular(),
  });
}
