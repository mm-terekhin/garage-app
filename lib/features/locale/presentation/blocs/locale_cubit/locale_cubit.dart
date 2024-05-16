import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/features/features.dart';
import 'package:garage/shared/domain/domain.dart';

import '../../../../../app/i18n/strings.g.dart';
import '../../../../../core/core.dart';

class LocaleCubit extends Cubit<Locale?> {
  LocaleCubit({
    required GetLocaleCase getLocaleCase,
    required SetLocaleCase setLocaleCase,
  })  : _getLocaleCase = getLocaleCase,
        _setLocaleCase = setLocaleCase,
        super(getLocaleCase.call(NoParams()));

  final GetLocaleCase _getLocaleCase;
  final SetLocaleCase _setLocaleCase;

  Future<void> setLocale() async {
    try {
      final currentLocale = _getLocaleCase.call(NoParams());
      late Locale? locale;

      if (currentLocale == null ||
          currentLocale.languageCode.toLowerCase() == 'ru') {
        locale = const Locale('en');
      } else {
        locale = const Locale('ru');
      }

      await _setLocaleCase.call(locale);

      LocaleSettings.setLocaleRaw(
        locale.languageCode,
      );
    } on Exception {
      throw SetLocaleException();
    }
  }

  Locale? getLocale() {
    return _getLocaleCase.call(
      NoParams(),
    );
  }
}
