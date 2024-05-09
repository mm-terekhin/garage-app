import 'package:formz/formz.dart';

import '../../../../app/app.dart';

enum VerifiedPasswordValidationError {
  empty,
  incorrect;

  String toText(AppLocalizations l10n) {
    switch (this) {
      case VerifiedPasswordValidationError.empty:
        return l10n.errorTextForEmpty;
      case VerifiedPasswordValidationError.incorrect:
        return l10n.errorTextForIncorrectRePassword;
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
