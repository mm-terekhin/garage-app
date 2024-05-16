import 'dart:ui';

import 'package:flutter/painting.dart';

import '../../../features.dart';

class LocaleRepositoryImpl implements LocaleRepository {
  const LocaleRepositoryImpl({
    required LocaleLocaleDataSource localeDataSource,
  }) : _localeDataSource = localeDataSource;

  final LocaleLocaleDataSource _localeDataSource;

  @override
  Locale? getLocale()  {
    final locale =  _localeDataSource.getLocale();

    return locale;
  }

  @override
  Future<void> setLocale({
    required Locale locale,
  }) async {
    await _localeDataSource.setLocale(
      locale: locale,
    );
  }
}
