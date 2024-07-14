import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:get_it/get_it.dart';
import '../../../../../shared/domain/domain.dart';
import '../../../../../shared/shared.dart';
import '../../../auth.dart';

part 'reset_password_with_email_event.dart';

part 'reset_password_with_email_state.dart';

class ResetPasswordWithEmailBloc
    extends Bloc<ResetPasswordWithEmailEvent, ResetPasswordWithEmailState> {
  ResetPasswordWithEmailBloc({required ResetPasswordCase resetPasswordCase})
      : _resetPasswordCase = resetPasswordCase,
        super(const ResetPasswordWithEmailState.initial()) {
    on<ChangeMailResetPasswordWithEmailEvent>(_onChange);
    on<SubmitResetPasswordWithEmailEvent>(_onSubmit);
  }

  final ResetPasswordCase _resetPasswordCase;

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
      await _resetPasswordCase.call(
        state.email.value,
      );

      GetIt.instance<TimersBloc>().add(
        ResetPasswordTimersEvent(),
      );

      emit(
        state.copyWith(
          status: ResetPasswordWithEmailStatus.success,
          viewStatus: state.viewStatus.isInitial ? ViewStatus.submitted : null,
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
