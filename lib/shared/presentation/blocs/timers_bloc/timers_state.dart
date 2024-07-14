part of 'timers_bloc.dart';

final class TimersState extends Equatable {
  const TimersState({
    required this.resetPasswordTimeoutSeconds,
    required this.verifyEmailTimeoutSeconds,
  });

  const TimersState.initial()
      : resetPasswordTimeoutSeconds = 0,
        verifyEmailTimeoutSeconds = 0;

  final int resetPasswordTimeoutSeconds;
  final int verifyEmailTimeoutSeconds;

  TimersState copyWith({
    int? resetPasswordTimeoutSeconds,
    int? verifyEmailTimeoutSeconds,
  }) {
    return TimersState(
      resetPasswordTimeoutSeconds:
          resetPasswordTimeoutSeconds ?? this.resetPasswordTimeoutSeconds,
      verifyEmailTimeoutSeconds:
          verifyEmailTimeoutSeconds ?? this.verifyEmailTimeoutSeconds,
    );
  }

  @override
  List<Object> get props => [
        resetPasswordTimeoutSeconds,
        verifyEmailTimeoutSeconds,
      ];
}
