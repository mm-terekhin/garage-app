import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_data.freezed.dart';

@freezed
class SignUpData with _$SignUpData{
  const SignUpData._();

  const factory SignUpData({
    required final String login,
    required final String username,
    required final String password,
}) = _SignUpData;
}