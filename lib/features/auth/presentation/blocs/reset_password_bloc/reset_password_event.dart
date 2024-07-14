part of 'reset_password_bloc.dart';

sealed class ResetPasswordEvent extends Equatable {
  const ResetPasswordEvent();

  @override
  List<Object?> get props => [];
}

class ChangeFormResetPasswordEvent extends ResetPasswordEvent {
  const ChangeFormResetPasswordEvent({
    required this.form,
  });

  final ResetPasswordForm form;

  @override
  List<Object?> get props => [
        form,
      ];
}

class SubmitResetPasswordEvent extends ResetPasswordEvent {}
