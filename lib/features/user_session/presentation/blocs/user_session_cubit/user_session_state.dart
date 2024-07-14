part of 'user_session_cubit.dart';

class UserSessionState extends Equatable {
  const UserSessionState({
    required this.userSession,
  });

  final UserSession userSession;

  bool get isAuthenticated => userSession.isAuthenticated;

  @override
  List<Object?> get props => [
    userSession,
  ];
}
