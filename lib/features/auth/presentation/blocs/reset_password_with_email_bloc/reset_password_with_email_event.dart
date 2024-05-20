part of 'reset_password_with_email_bloc.dart';

sealed class ResetPasswordWithEmailEvent extends Equatable {
  const ResetPasswordWithEmailEvent();

  @override
  List<Object?> get props => [];
}

class ChangeMailResetPasswordWithEmailEvent
    extends ResetPasswordWithEmailEvent {
  const ChangeMailResetPasswordWithEmailEvent({
    required this.value,
  });

  final EmailInput value;

  @override
  List<Object?> get props => [
        value,
      ];
}

class SubmitResetPasswordWithEmailEvent extends ResetPasswordWithEmailEvent {
  const SubmitResetPasswordWithEmailEvent();
}
