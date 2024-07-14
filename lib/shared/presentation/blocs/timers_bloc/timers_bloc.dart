import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'timers_event.dart';

part 'timers_state.dart';

class TimersBloc extends Bloc<TimersEvent, TimersState> {
  TimersBloc() : super(const TimersState.initial()) {
    on<ResetPasswordTimersEvent>(_onResetPassword);
    on<VerifyEmailTimersEvent>(_onVerifyEmail);
  }

  Future<void> _onResetPassword(
    ResetPasswordTimersEvent event,
    Emitter<TimersState> emit,
  ) async {
    if (state.resetPasswordTimeoutSeconds > 0) {
      return;
    }
  }

  Future<void> _onVerifyEmail(
    VerifyEmailTimersEvent event,
    Emitter<TimersState> emit,
  ) async {
    if (state.verifyEmailTimeoutSeconds > 0) {
      return;
    }
  }
}
