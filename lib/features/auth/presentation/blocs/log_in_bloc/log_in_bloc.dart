import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../../../../shared/domain/domain.dart';

part 'log_in_event.dart';

part 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc({
    required Talker talker,
  })  : _talker = talker,
        super(const LogInState.initial()) {
    on<ChangeFormLogInEvent>(_onChangeForm);
    on<SubmitLogInEvent>(_onSubmit);
  }

  final Talker _talker;

  void _onChangeForm(
    ChangeFormLogInEvent event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        form: event.value,
      ),
    );
  }

  Future<void> _onSubmit(
    SubmitLogInEvent event,
    Emitter emit,
  ) async {
    if (!state.isValid) {
      emit(
        state.copyWith(
          isError: true,
        ),
      );
      return;
    }

    try {
      emit(
        state.copyWith(
          status: LogInStatus.loading,
        ),
      );

      emit(
        state.copyWith(
          status: LogInStatus.success,
        ),
      );
    } on Exception catch (error, stackTrace) {
      _talker.handle(
        error,
        stackTrace,
        'Exception in LogInBloc ---> _onSubmit',
      );

      emit(
        state.copyWith(
          status: LogInStatus.failure,
        ),
      );
    }
  }
}
