import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../entities.dart';

part 'sign_up_form.freezed.dart';

@freezed
class SignUpForm with _$SignUpForm, FormzMixin {
  const SignUpForm._();

  const factory SignUpForm({
    required final TextInput login,
    required final TextInput username,
    required final PasswordInput password,
    required final VerifiedPassword rePassword,
  }) = _SignUpForm;

  const factory SignUpForm.pure({
    @Default(TextInput.pure()) final TextInput login,
    @Default(TextInput.pure()) final TextInput username,
    @Default(PasswordInput.pure()) final PasswordInput password,
    @Default(VerifiedPassword.pure()) VerifiedPassword rePassword,
  }) = _SignUpFormPure;

  SignUpData toModel() => SignUpData(
        login: login.value,
        password: password.value,
      );

  @override
  List<FormzInput> get inputs => [
        login,
        username,
        password,
        rePassword,
      ];
}
