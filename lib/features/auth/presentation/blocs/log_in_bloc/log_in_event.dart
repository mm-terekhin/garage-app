part of 'log_in_bloc.dart';

sealed class LogInEvent extends Equatable {
  const LogInEvent();

  @override
  List<Object?> get props => [];
}

class ChangeFormLogInEvent extends LogInEvent {
  const ChangeFormLogInEvent({
    required this.value,
  });

  final LogInForm value;

  @override
  List<Object?> get props => [
        value,
      ];
}

class SubmitLogInEvent extends LogInEvent {}
