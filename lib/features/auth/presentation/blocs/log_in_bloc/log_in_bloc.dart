import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:talker_flutter/talker_flutter.dart';
import '../../../../../core/core.dart';
import '../../../../../shared/domain/domain.dart';
import '../../../../features.dart';
import '../../../auth.dart';

part 'log_in_event.dart';

part 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc({
    required Talker talker,
    required LogInCase logInCase,
    required SetUserSessionCase setUserSessionCase,
  })  : _talker = talker,
        _logInCase = logInCase,
        _setUserSessionCase = setUserSessionCase,
        super(const LogInState.initial()) {
    on<ChangeFormLogInEvent>(_onChangeForm);
    on<SubmitLogInEvent>(_onSubmit);
  }

  final Talker _talker;
  final LogInCase _logInCase;
  final SetUserSessionCase _setUserSessionCase;

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

      final credential = await _logInCase.call(
        state.form.toModel(),
      );

      final userSession = UserSession(
        token: TokenData(
          accessToken: credential.credential?.accessToken ?? '',
          uid: credential.user?.uid ?? '',
        ),
        user: UserData(
          username: credential.user?.displayName ?? '',
          mail: credential.user?.email,
          phone: credential.user?.phoneNumber,
        ),
      );

      await _setUserSessionCase.call(
        userSession,
      );

      emit(
        state.copyWith(
          credential: credential,
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
          unverified: error is UnverifiedMailException,
        ),
      );
    }
  }
}
