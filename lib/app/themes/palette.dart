import 'package:flutter/material.dart';

class Palette extends ThemeExtension<Palette> {
  const Palette({
    // Text
    required this.textPrimary,
    required this.textSecondary,
    required this.textContrast,
    // Background
    required this.bgPrimary,
    required this.bgContrast,
    //Border
    required this.borderPrimary,
  });

  const Palette.light()
      : this(
          // Text
          textPrimary: const Color(0xFF000000),
          textSecondary: const Color(0xFF707C8C),
          textContrast: const Color(0xFFFFFFFF),
          // Background
          bgPrimary: const Color(0xFFF4F4F4),
          bgContrast: const Color(0xFF000000),
          //Border
          borderPrimary: const Color(0xFFced4da),
        );

  // Text
  final Color textPrimary;
  final Color textSecondary;
  final Color textContrast;

  // Background
  final Color bgPrimary;
  final Color bgContrast;

  // Border
  final Color borderPrimary;

  @override
  Palette copyWith({
    Color? textPrimary,
    Color? textSecondary,
    Color? textContrast,
    Color? bgPrimary,
    Color? bgContrast,
    Color? borderPrimary,
  }) {
    return Palette(
      // Text
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textContrast: textContrast ?? this.textContrast,
      // Background
      bgPrimary: bgPrimary ?? this.bgPrimary,
      bgContrast: bgContrast ?? this.bgContrast,
      // Border
      borderPrimary: borderPrimary ?? this.borderPrimary,
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
      // Background
      bgPrimary: Color.lerp(bgPrimary, other.bgPrimary, t)!,
      bgContrast: Color.lerp(bgContrast, other.bgContrast, t)!,
      // Border
      borderPrimary: Color.lerp(borderPrimary, other.borderPrimary, t)!,
    );
  }
}
