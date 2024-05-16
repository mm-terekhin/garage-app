import 'dart:ui';
import 'package:garage/shared/domain/domain.dart';

import '../../../features.dart';

class SetLocaleCase implements UseCase<void, Locale> {
  const SetLocaleCase({required LocaleRepository localeRepository})
      : _localeRepository = localeRepository;

  final LocaleRepository _localeRepository;

  @override
  Future<void> call(Locale locale) async {
    await _localeRepository.setLocale(
      locale: locale,
    );
  }
}
