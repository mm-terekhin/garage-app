part of 'reset_password_with_email_bloc.dart';

enum ResetPasswordWithEmailStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == initial;

  bool get isLoading => this == loading;

  bool get isSuccess => this == success;

  bool get isFailure => this == failure;
}

class ResetPasswordWithEmailState extends Equatable with FormzMixin {
  const ResetPasswordWithEmailState({
    required this.status,
    required this.email,
    required this.isError,
  });

  const ResetPasswordWithEmailState.initial()
      : status = ResetPasswordWithEmailStatus.initial,
        email = const EmailInput.pure(),
        isError = false;

  final ResetPasswordWithEmailStatus status;
  final EmailInput email;
  final bool isError;

  ResetPasswordWithEmailState copyWith({
    ResetPasswordWithEmailStatus? status,
    EmailInput? email,
    bool? isError,
  }) {
    return ResetPasswordWithEmailState(
      status: status ?? this.status,
      email: email ?? this.email,
      isError: isError ?? this.isError,
    );
  }

  @override
  List<Object?> get props => [
        status,
        email,
        isError,
      ];

  @override
  List<FormzInput> get inputs => [
        email,
      ];
}
