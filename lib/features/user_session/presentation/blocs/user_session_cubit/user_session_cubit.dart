import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../shared/domain/domain.dart';
import '../../../../features.dart';

part 'user_session_state.dart';

class UserSessionCubit extends Cubit<UserSessionState> {
  UserSessionCubit({
    required UserSessionRepository userSessionRepository,
  }) : super(
    UserSessionState(
      userSession: userSessionRepository.getUserSession(),
    ),
  ) {
    _userSessionSubscription =
        userSessionRepository.userSessionChanges.listen((userSession) {
          _changeUserSession(userSession: userSession);
        });
  }

  late StreamSubscription<UserSession> _userSessionSubscription;

  void _changeUserSession({
    required UserSession userSession,
  }) {
    final newState = UserSessionState(userSession: userSession);

    emit(newState);
  }

  @override
  Future<void> close() {
    _userSessionSubscription.cancel();
    return super.close();
  }
}

