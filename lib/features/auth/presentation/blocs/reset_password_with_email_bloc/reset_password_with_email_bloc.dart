import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import '../../../../../shared/domain/domain.dart';

part 'reset_password_with_email_event.dart';

part 'reset_password_with_email_state.dart';

class ResetPasswordWithEmailBloc
    extends Bloc<ResetPasswordWithEmailEvent, ResetPasswordWithEmailState> {
  ResetPasswordWithEmailBloc()
      : super(const ResetPasswordWithEmailState.initial()) {
    on<ChangeMailResetPasswordWithEmailEvent>(_onChange);
    on<SubmitResetPasswordWithEmailEvent>(_onSubmit);
  }

  void _onChange(
    ChangeMailResetPasswordWithEmailEvent event,
    Emitter<ResetPasswordWithEmailState> emit,
  ) {
    emit(
      state.copyWith(
        email: event.value,
      ),
    );
  }

  Future<void> _onSubmit(
    SubmitResetPasswordWithEmailEvent event,
    Emitter<ResetPasswordWithEmailState> emit,
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
        status: ResetPasswordWithEmailStatus.loading,
      ),
    );

    try {
      emit(
        state.copyWith(
          status: ResetPasswordWithEmailStatus.success,
        ),
      );
    } on Exception {
      emit(
        state.copyWith(
          status: ResetPasswordWithEmailStatus.failure,
        ),
      );
    }
  }
}
