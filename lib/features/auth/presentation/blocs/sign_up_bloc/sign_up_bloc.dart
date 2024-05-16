import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:garage/features/auth/auth.dart';
import 'package:garage/shared/domain/entities/forms/sign_up_form.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({
    required Talker talker,
    required SignUpCase signUpCase,
  })  : _talker = talker,
        _signUpCase = signUpCase,
        super(SignUpState.initial()) {
    on<ChangeSignUpFormEvent>(_onChange);
    on<SubmitSignUpEvent>(_onSubmit);
  }

  final Talker _talker;
  final SignUpCase _signUpCase;

  void _onChange(
    ChangeSignUpFormEvent event,
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        form: event.form,
      ),
    );
  }

  Future<void> _onSubmit(
    SubmitSignUpEvent event,
    Emitter<SignUpState> emit,
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
          status: SignUpStatus.loading,
        ),
      );

      await _signUpCase.call(
        state.form.toModel(),
      );

      emit(
        state.copyWith(
          status: SignUpStatus.success,
        ),
      );
    } on Exception catch (error, stackTrace) {
      _talker.handle(
        error,
        stackTrace,
        'Exception in SignUpBloc ---> _onSubmit',
      );

      emit(
        state.copyWith(
          status: SignUpStatus.failure,
        ),
      );
    }
  }
}
