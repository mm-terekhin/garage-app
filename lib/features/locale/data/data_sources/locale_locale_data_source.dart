import 'dart:async';
import 'dart:ui';

import 'package:hive/hive.dart';

abstract interface class LocaleLocaleDataSource {
  Locale? getLocale();

  Future<void> setLocale({required Locale locale});
}

class LocaleLocaleDataSourceImpl implements LocaleLocaleDataSource {
  LocaleLocaleDataSourceImpl._internal({
    required Box<Locale?> localeBox,
  }) : _localeBox = localeBox;

  static Future<LocaleLocaleDataSourceImpl> create(
      {required HiveInterface hive}) async {
    final box = await hive.openBox<Locale?>(localeBoxName);

    final dataSource = LocaleLocaleDataSourceImpl._internal(
      localeBox: box,
    );

    return dataSource;
  }

  static const String localeBoxName = 'localeBox';
  static const String localeKey = 'currentLocale';

  final Box<Locale?> _localeBox;

  @override
  Locale? getLocale() {
    final data = _localeBox.get(localeKey);

    return data;
  }

  @override
  Future<void> setLocale({required Locale locale}) async {
    await _localeBox.put(
      localeKey,
      locale,
    );
  }
}
