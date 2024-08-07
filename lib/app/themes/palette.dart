import 'package:flutter/material.dart';

class Palette extends ThemeExtension<Palette> {
  const Palette({
    // Text
    required this.textPrimary,
    required this.textSecondary,
    required this.textContrast,
    required this.textError,
    // Background
    required this.bgPrimary,
    required this.bgContrast,
    //Border
    required this.borderPrimary,
    required this.borderError,
    //Icon
    required this.iconPrimary,
    required this.iconContrast,
    required this.iconSecondary,
  });

  const Palette.light()
      : this(
          // Text
          textPrimary: const Color(0xFF000000),
          textSecondary: const Color(0xFF707C8C),
          textContrast: const Color(0xFFFFFFFF),
          textError: const Color(0xFFD00000),
          // Background
          bgPrimary: const Color(0xFFF4F4F4),
          bgContrast: const Color(0xFF000000),
          //Border
          borderPrimary: const Color(0xFFced4da),
          borderError: const Color(0xFFD00000),
          //Icon
          iconPrimary: const Color(0xFFadb5bd),
          iconSecondary: const Color(0xFF000000),
          iconContrast: const Color(0xFFFFFFFF),
        );

  // Text
  final Color textPrimary;
  final Color textSecondary;
  final Color textContrast;
  final Color textError;

  // Background
  final Color bgPrimary;
  final Color bgContrast;

  // Border
  final Color borderPrimary;
  final Color borderError;

  //Icon
  final Color iconPrimary;
  final Color iconContrast;
  final Color iconSecondary;

  @override
  Palette copyWith({
    Color? textPrimary,
    Color? textSecondary,
    Color? textContrast,
    Color? textError,
    Color? bgPrimary,
    Color? bgContrast,
    Color? borderPrimary,
    Color? borderError,
    Color? iconPrimary,
    Color? iconContrast,
    Color? iconSecondary,
  }) {
    return Palette(
      // Text
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textContrast: textContrast ?? this.textContrast,
      textError: textError ?? this.textError,
      // Background
      bgPrimary: bgPrimary ?? this.bgPrimary,
      bgContrast: bgContrast ?? this.bgContrast,
      // Border
      borderPrimary: borderPrimary ?? this.borderPrimary,
      borderError: borderError ?? this.borderError,
      // Icons
      iconPrimary: iconPrimary ?? this.iconPrimary,
      iconContrast: iconContrast ?? this.iconContrast,
      iconSecondary: iconSecondary ?? this.iconSecondary,
    );
  }

  @override
  ThemeExtension<Palette> lerp(ThemeExtension<Palette>? other, double t) {
    if (other is! Palette) {
      return this;
    }

    return Palette(
      // Text
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textContrast: Color.lerp(textContrast, other.textContrast, t)!,
      textError: Color.lerp(textError, other.textError, t)!,
      // Background
      bgPrimary: Color.lerp(bgPrimary, other.bgPrimary, t)!,
      bgContrast: Color.lerp(bgContrast, other.bgContrast, t)!,
      // Border
      borderPrimary: Color.lerp(borderPrimary, other.borderPrimary, t)!,
      borderError: Color.lerp(borderError, other.borderError, t)!,
      //Icon
      iconPrimary: Color.lerp(iconPrimary, other.iconPrimary, t)!,
      iconContrast: Color.lerp(iconContrast, other.iconContrast, t)!,
      iconSecondary: Color.lerp(iconSecondary, other.iconSecondary, t)!,
    );
  }
}
