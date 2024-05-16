import 'package:formz/formz.dart';
import '../../../../app/i18n/strings.g.dart';

enum VerifiedPasswordValidationError {
  empty,
  incorrect;

  String toText(Translations l10n) {
    switch (this) {
      case VerifiedPasswordValidationError.empty:
        return l10n.errors.errorTextForEmpty;
      case VerifiedPasswordValidationError.incorrect:
        return l10n.errors.errorTextForIncorrectRePassword;
    }
  }
}

class VerifiedPassword
    extends FormzInput<String, VerifiedPasswordValidationError> {
  const VerifiedPassword.pure({this.original = ''}) : super.pure('');

  const VerifiedPassword.dirty({
    required String value,
    required this.original,
  }) : super.dirty(value);

  final String original;

  @override
  VerifiedPasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return VerifiedPasswordValidationError.empty;
    }
    if (value != original) {
      return VerifiedPasswordValidationError.incorrect;
    }
    return null;
  }
}
