import 'package:formz/formz.dart';
import '../../../../app/i18n/strings.g.dart';

enum EmailValidationError {
  empty,
  invalidFormat;

  String toText(Translations l10n) {
    switch (this) {
      case EmailValidationError.empty:
        return l10n.errors.errorTextForEmpty;
      case EmailValidationError.invalidFormat:
        return l10n.errors.errorTextIncorrectForEmail;
    }
  }
}

class EmailInput extends FormzInput<String, EmailValidationError> {
  const EmailInput.pure({
    this.isRequired = true,
  }) : super.pure('');

  const EmailInput.dirty({
    this.isRequired = true,
    required String value,
  }) : super.dirty(value);

  final bool isRequired;

  static final _emailRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+",
  );

  @override
  EmailValidationError? validator(String? value) {
    final isEmpty = value?.isEmpty ?? true;

    if (isRequired && isEmpty) {
      return EmailValidationError.empty;
    }

    if (!isEmpty && !_emailRegex.hasMatch(value!)) {
      return EmailValidationError.invalidFormat;
    }

    return null;
  }
}
