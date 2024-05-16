import 'dart:ui';
import 'package:garage/shared/domain/domain.dart';

import '../../../features.dart';

class GetLocaleCase implements UseCase<Locale?, NoParams> {
  const GetLocaleCase({required LocaleRepository localeRepository})
      : _localeRepository = localeRepository;

  final LocaleRepository _localeRepository;

  @override
  Locale? call(NoParams params)  {
    final locale = _localeRepository.getLocale();

    return locale;
  }
}
