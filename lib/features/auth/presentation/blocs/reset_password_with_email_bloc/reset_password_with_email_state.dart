part of 'reset_password_with_email_bloc.dart';

sealed class ResetPasswordWithEmailState extends Equatable {
  const ResetPasswordWithEmailState();
}

final class ResetPasswordWithEmailInitial extends ResetPasswordWithEmailState {
  @override
  List<Object> get props => [];
}
