import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../entities.dart';

part 'reset_password_form.freezed.dart';

@freezed
class ResetPasswordForm with _$ResetPasswordForm, FormzMixin {
  const ResetPasswordForm._();

  const factory ResetPasswordForm({
    required final TextInput newPassword,
    required final TextInput confirmNewPassword,
  }) = _ResetPasswordForm;

  const factory ResetPasswordForm.initial({
    @Default(TextInput.pure()) final TextInput newPassword,
    @Default(TextInput.pure()) final TextInput confirmNewPassword,
  }) = _ResetPasswordFormInitial;

  @override
  List<FormzInput> get inputs => [
    newPassword,
    confirmNewPassword,
  ];
}
