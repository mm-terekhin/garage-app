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
    required this.credential,
  });

  const SignUpState.initial({this.credential})
      : status = SignUpStatus.initial,
        form = const SignUpForm.pure(),
        isError = false;

  final SignUpStatus status;
  final SignUpForm form;
  final bool isError;
  final UserCredential? credential;

  SignUpState copyWith({
    SignUpStatus? status,
    SignUpForm? form,
    bool? isError,
    UserCredential? credential,
  }) {
    return SignUpState(
      status: status ?? this.status,
      form: form ?? this.form,
      isError: isError ?? this.isError,
      credential: credential ?? this.credential,
    );
  }

  @override
  List<Object?> get props => [
        status,
        form,
        isError,
        credential,
      ];

  @override
  List<FormzInput> get inputs => [
        ...form.inputs,
      ];
}
