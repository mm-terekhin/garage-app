import 'package:formz/formz.dart';
import '../../../../app/i18n/strings.g.dart';

enum NumInputValidationError {
  empty;

  String toText(Translations l10n) {
    switch (this) {
      case NumInputValidationError.empty:
        return l10n.errors.errorTextForEmpty;
    }
  }
}

class NumInput extends FormzInput<double?, NumInputValidationError> {
  final bool isRequired;

  const NumInput.pure({
    this.isRequired = true,
  }) : super.pure(null);

  const NumInput.dirty({
    required double value,
    this.isRequired = true,
  }) : super.dirty(value);

  NumInput toDirty({
    required double value,
  }) =>
      NumInput.dirty(
        value: value,
      );

  @override
  NumInputValidationError? validator(double? value) {
    if (isRequired && value == null) {
      return NumInputValidationError.empty;
    }
    return null;
  }
}
