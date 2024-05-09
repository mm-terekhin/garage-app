part of 'sign_up_bloc.dart';

enum SignUpStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == initial;

  bool get isLoading => this == loading;

  bool get isSuccess => this == success;

  bool get isFailure => this == failure;
}

final class SignUpState extends Equatable with FormzMixin {
  const SignUpState({
    required this.status,
    required this.form,
    required this.isError,
  });

  const SignUpState.initial()
      : status = SignUpStatus.initial,
        form = const SignUpForm.pure(),
        isError = false;

  final SignUpStatus status;
  final SignUpForm form;
  final bool isError;

  SignUpState copyWith({
    SignUpStatus? status,
    SignUpForm? form,
    bool? isError,
  }) {
    return SignUpState(
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
