import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import '../../../../../shared/domain/domain.dart';

part 'reset_password_event.dart';

part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(const ResetPasswordState.initial()) {
    on<ChangeFormResetPasswordEvent>(_onChange);
    on<SubmitResetPasswordEvent>(_onSubmit);
  }

  void _onChange(
    ChangeFormResetPasswordEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(
      state.copyWith(
        form: event.form,
      ),
    );
  }

  Future<void> _onSubmit(
    SubmitResetPasswordEvent event,
    Emitter<ResetPasswordState> emit,
  ) async {
    if (!state.isValid) {
      emit(
        state.copyWith(
          isError: true,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        status: ResetPasswordStatus.initial,
      ),
    );

    try {} on Exception {
      emit(
        state.copyWith(
          status: ResetPasswordStatus.failure,
        ),
      );
    }
  }
}
