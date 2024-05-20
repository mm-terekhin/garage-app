import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../auth.dart';

part 'confirm_mail_event.dart';

part 'confirm_mail_state.dart';

class ConfirmMailBloc extends Bloc<ConfirmMailEvent, ConfirmMailState> {
  ConfirmMailBloc({
    required UserCredential credential,
    required ConfirmMailCase confirmMailCase,
  })  : _confirmMailCase = confirmMailCase,
        super(
          ConfirmMailState.initial(
            credential: credential,
          ),
        ) {
    on<ResendConfirmMailEvent>(_onResend);
  }

  final ConfirmMailCase _confirmMailCase;

  Future<void> _onResend(
    ResendConfirmMailEvent event,
    Emitter<ConfirmMailState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ConfirmMailStatus.loading,
      ),
    );

    try {
      await _confirmMailCase.call(
        state.credential,
      );

      emit(
        state.copyWith(
          status: ConfirmMailStatus.success,
        ),
      );
    } on Exception {
      emit(
        state.copyWith(
          status: ConfirmMailStatus.failure,
        ),
      );
    }
  }
}
