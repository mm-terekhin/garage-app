import 'package:formz/formz.dart';
import '../../../../app/app.dart';

enum TextInputValidationError {
  empty;

  String toText(AppLocalizations l10n) {
    switch (this) {
      case TextInputValidationError.empty:
        return l10n.errorTextForEmpty;
    }
  }
}

class TextInput extends FormzInput<String, TextInputValidationError> {
  final bool isRequired;

  const TextInput.pure({
    this.isRequired = true,
  }) : super.pure('');

  const TextInput.dirty({
    required String value,
    this.isRequired = true,
  }) : super.dirty(value);

  TextInput toDirty({
    required String value,
  }) =>
      TextInput.dirty(
        value: value,
      );

  @override
  TextInputValidationError? validator(String value) {
    if (isRequired && value.isEmpty) {
      return TextInputValidationError.empty;
    }
    return null;
  }
}
