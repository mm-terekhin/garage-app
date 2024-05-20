part of 'confirm_mail_bloc.dart';

enum ConfirmMailStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == initial;

  bool get isLoading => this == loading;

  bool get isSuccess => this == success;

  bool get isFailure => this == failure;
}

final class ConfirmMailState extends Equatable {
  const ConfirmMailState({
    required this.status,
    required this.credential,
  });

  const ConfirmMailState.initial({required this.credential})
      : status = ConfirmMailStatus.initial;

  final ConfirmMailStatus status;
  final UserCredential credential;

  ConfirmMailState copyWith({
    ConfirmMailStatus? status,
    UserCredential? credential,
  }) {
    return ConfirmMailState(
      status: status ?? this.status,
      credential: credential ?? this.credential,
    );
  }

  @override
  List<Object?> get props => [
        status,
        credential,
      ];
}
