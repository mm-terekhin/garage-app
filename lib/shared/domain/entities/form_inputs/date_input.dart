import 'package:formz/formz.dart';

enum DateValidationError {
  empty,
}

class DateInput extends FormzInput<String, DateValidationError> {
  const DateInput.pure({
    this.isRequired = true,
  }) : super.pure('');

  const DateInput.dirty({
    this.isRequired = true,
    required String value,
  }) : super.dirty(value);

  final bool isRequired;


  @override
  DateValidationError? validator(String? value) {
    return null;
  }
}
