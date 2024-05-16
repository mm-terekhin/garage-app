import 'package:flutter/material.dart';
import 'package:garage/app/i18n/strings.g.dart';

extension TranslationsX on BuildContext {
  Translations get l10n => Translations.of(this);
}
