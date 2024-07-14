part of 'profile_bloc.dart';

enum ProfileStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == initial;

  bool get isLoading => this == loading;

  bool get isSuccess => this == success;

  bool get isFailure => this == failure;
}

class ProfileState extends Equatable {
  const ProfileState({
    required this.status,
  });

  const ProfileState.initial() : status = ProfileStatus.initial;

  final ProfileStatus status;

  ProfileState copyWith({
    ProfileStatus? status,
  }) =>
      ProfileState(
        status: status ?? this.status,
      );

  @override
  List<Object?> get props => [
        status,
      ];
}
