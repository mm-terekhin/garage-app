part of 'sign_up_bloc.dart';

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object?> get props => [];
}

class ChangeSignUpFormEvent extends SignUpEvent {
  const ChangeSignUpFormEvent({
    required this.form,
  });

  final SignUpForm form;

  @override
  List<Object?> get props => [
        form,
      ];
}

class SubmitSignUpEvent extends SignUpEvent {
  const SubmitSignUpEvent();
}
