part of 'timers_bloc.dart';

sealed class TimersEvent extends Equatable {
  const TimersEvent();

  @override
  List<Object?> get props => [];
}

class ResetPasswordTimersEvent extends TimersEvent {}

class VerifyEmailTimersEvent extends TimersEvent {}
