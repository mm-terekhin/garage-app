import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'reset_password_with_email_event.dart';
part 'reset_password_with_email_state.dart';

class ResetPasswordWithEmailBloc extends Bloc<ResetPasswordWithEmailEvent, ResetPasswordWithEmailState> {
  ResetPasswordWithEmailBloc() : super(ResetPasswordWithEmailInitial()) {
    on<ResetPasswordWithEmailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
