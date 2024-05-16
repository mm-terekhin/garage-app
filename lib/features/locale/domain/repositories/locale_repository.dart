import 'dart:ui';

abstract interface class LocaleRepository {
  Locale? getLocale();

  Future<void> setLocale({required Locale locale});
}
