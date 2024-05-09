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
  });

  const LogInState.initial()
      : status = LogInStatus.initial,
        form = const LogInForm.pure(),
        isError = false;

  final LogInStatus status;
  final LogInForm form;
  final bool isError;

  LogInState copyWith({
    LogInStatus? status,
    LogInForm? form,
    bool? isError,
  }) {
    return LogInState(
      status: status ?? this.status,
      form: form ?? this.form,
      isError: isError ?? this.isError,
    );
  }

  @override
  List<Object?> get props => [
        status,
        form,
        isError,
      ];

  @override
  List<FormzInput> get inputs => [
        ...form.inputs,
      ];
}
