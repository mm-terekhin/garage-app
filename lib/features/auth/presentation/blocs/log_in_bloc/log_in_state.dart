part of 'log_in_bloc.dart';

enum LogInStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == initial;

  bool get isLoading => this == loading;

  bool get isSuccess => this == success;

  bool get isFailure => this == failure;
}

final class LogInState extends Equatable with FormzMixin {
  const LogInState({
    required this.status,
    required this.form,
    required this.isError,
    required this.unverified,
    required this.credential,
  });

  const LogInState.initial()
      : status = LogInStatus.initial,
        form = const LogInForm.pure(),
        isError = false,
        unverified = false,
        credential = null;

  final LogInStatus status;
  final LogInForm form;
  final bool isError;
  final bool unverified;
  final UserCredential? credential;

  LogInState copyWith(
      {LogInStatus? status,
      LogInForm? form,
      bool? isError,
      bool? unverified,
      UserCredential? credential}) {
    return LogInState(
      status: status ?? this.status,
      form: form ?? this.form,
      isError: isError ?? this.isError,
      unverified: unverified ?? this.unverified,
      credential: credential ?? this.credential,
    );
  }

  @override
  List<Object?> get props => [
        status,
        form,
        isError,
        unverified,
        credential,
      ];

  @override
  List<FormzInput> get inputs => [
        ...form.inputs,
      ];
}
