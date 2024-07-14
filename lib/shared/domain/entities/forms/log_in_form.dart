import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../entities.dart';

part 'log_in_form.freezed.dart';

@freezed
class LogInForm with _$LogInForm, FormzMixin {
  const LogInForm._();

  const factory LogInForm.pure([
    @Default(EmailInput.pure()) final EmailInput email,
    @Default(TextInput.pure()) final TextInput password,
  ]) = _LogInFormPure;

  const factory LogInForm({
    required final EmailInput email,
    required final TextInput password,
  }) = _LogInForm;

  LogInData toModel() => LogInData(
        login: email.value,
        password: password.value,
      );

  @override
  List<FormzInput> get inputs => [
        email,
        password,
      ];
}
