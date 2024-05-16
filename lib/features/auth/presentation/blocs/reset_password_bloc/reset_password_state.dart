part of 'reset_password_bloc.dart';

enum ResetPasswordStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == initial;

  bool get isLoading => this == loading;

  bool get isSuccess => this == success;

  bool get isFailure => this == failure;
}

class ResetPasswordState extends Equatable with FormzMixin {
  const ResetPasswordState({
    required this.form,
    required this.email,
    required this.status,
    required this.isError,
  });

  const ResetPasswordState.initial({this.email})
      : form = const ResetPasswordForm.initial(),
        status = ResetPasswordStatus.initial,
        isError = false;

  final ResetPasswordForm form;
  final String? email;
  final ResetPasswordStatus status;
  final bool isError;

  ResetPasswordState copyWith({
    ResetPasswordForm? form,
    String? email,
    ResetPasswordStatus? status,
    bool? isError,
  }) {
    return ResetPasswordState(
      form: form ?? this.form,
      email: email ?? this.email,
      status: status ?? this.status,
      isError: isError ?? this.isError,
    );
  }

  @override
  List<Object?> get props => [
        form,
        email,
        status,
        isError,
      ];

  @override
  List<FormzInput> get inputs => [
        ...form.inputs,
      ];
}
