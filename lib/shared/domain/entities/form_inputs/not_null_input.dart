import 'package:formz/formz.dart';
import '../../../../app/i18n/strings.g.dart';

enum NotNullValidationError {
  empty;

  String toText(Translations l10n) {
    switch (this) {
      case NotNullValidationError.empty:
        return l10n.errors.errorTextForEmpty;
    }
  }
}

class NotNullInput<T> extends FormzInput<T?, NotNullValidationError> {
  const NotNullInput.pure({
    this.isRequired = true,
  }) : super.pure(null);

  const NotNullInput.dirty({
    this.isRequired = true,
    required T value,
  }) : super.dirty(value);

  final bool isRequired;

  @override
  NotNullValidationError? validator(T? value) {
    final isEmpty = value == null;

    if (isRequired && isEmpty) {
      return NotNullValidationError.empty;
    }

    return null;
  }
}
