import 'package:formz/formz.dart';

import '../../../../app/i18n/strings.g.dart';

enum PasswordInputValidationError {
  empty,
  light;

  String toText(Translations l10n) {
    switch (this) {
      case PasswordInputValidationError.empty:
        return l10n.errors.errorTextForEmpty;
      case PasswordInputValidationError.light:
        return l10n.errors.errorTextForIncorrectPassword;
    }
  }
}

class PasswordInput extends FormzInput<String, PasswordInputValidationError> {
  const PasswordInput.pure() : super.pure('');

  const PasswordInput.dirty(super.value) : super.dirty();

  static final _passwordRegexPass =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])|(?=.*?[!@#$&*~]).{7,}$');

  @override
  PasswordInputValidationError? validator(String value) {
    if (value.isEmpty) {
      return PasswordInputValidationError.empty;
    }
    if (!_passwordRegexPass.hasMatch(value)) {
      return PasswordInputValidationError.light;
    }
    return null;
  }
}
