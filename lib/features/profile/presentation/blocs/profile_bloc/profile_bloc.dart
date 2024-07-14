import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garage/shared/domain/domain.dart';
import '../../../../features.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required LogOutCase logOutCase,
    required RemoveUserSessionCase removeUserSessionCase,
    required DeleteAccountCase deleteAccountCase,
  })  : _logOutCase = logOutCase,
        _removeUserSessionCase = removeUserSessionCase,
        _deleteAccountCase = deleteAccountCase,
        super(
          const ProfileState.initial(),
        ) {
    on<LogOutProfileEvent>(_onLogOut);
    on<DeleteAccountProfileEvent>(_onDeleteAccount);
  }

  final LogOutCase _logOutCase;
  final RemoveUserSessionCase _removeUserSessionCase;
  final DeleteAccountCase _deleteAccountCase;

  Future<void> _onLogOut(
    LogOutProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ProfileStatus.loading,
      ),
    );
    try {
      await _logOutCase.call(
        NoParams(),
      );

      await _removeUserSessionCase.call(
        NoParams(),
      );



      emit(
        state.copyWith(
          status: ProfileStatus.success,
        ),
      );
    } on Exception {
      emit(
        state.copyWith(
          status: ProfileStatus.failure,
        ),
      );
    }
  }

  Future<void> _onDeleteAccount(
    DeleteAccountProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ProfileStatus.loading,
      ),
    );
    try {
      await _deleteAccountCase.call(
        NoParams(),
      );

      await _removeUserSessionCase.call(
        NoParams(),
      );
      emit(
        state.copyWith(
          status: ProfileStatus.success,
        ),
      );
    } on Exception {
      emit(
        state.copyWith(
          status: ProfileStatus.failure,
        ),
      );
    }
  }
}
