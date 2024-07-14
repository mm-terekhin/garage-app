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

enum ViewStatus {
  initial,
  submitted;

  bool get isInitial => this == initial;

  bool get isSubmitted => this == submitted;
}

class ResetPasswordWithEmailState extends Equatable with FormzMixin {
  const ResetPasswordWithEmailState({
    required this.status,
    required this.email,
    required this.isError,
    required this.viewStatus,
  });

  const ResetPasswordWithEmailState.initial()
      : status = ResetPasswordWithEmailStatus.initial,
        email = const EmailInput.pure(),
        isError = false,
        viewStatus = ViewStatus.initial;

  final ResetPasswordWithEmailStatus status;
  final EmailInput email;
  final bool isError;
  final ViewStatus viewStatus;

  ResetPasswordWithEmailState copyWith({
    ResetPasswordWithEmailStatus? status,
    EmailInput? email,
    bool? isError,
    ViewStatus? viewStatus,
  }) {
    return ResetPasswordWithEmailState(
      status: status ?? this.status,
      email: email ?? this.email,
      isError: isError ?? this.isError,
      viewStatus: viewStatus ?? this.viewStatus,
    );
  }

  @override
  List<Object?> get props => [
        status,
        email,
        isError,
        viewStatus,
      ];

  @override
  List<FormzInput> get inputs => [
        email,
      ];
}
