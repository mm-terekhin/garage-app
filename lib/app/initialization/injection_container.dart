import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:garage/features/auth/auth.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

final _getIt = GetIt.instance;

FutureOr<void> registerTalker() {
  _getIt
    ..registerLazySingleton<Talker>(Talker.new)
    ..registerLazySingleton<TalkerBlocObserver>(TalkerBlocObserver.new);
}

Future<void> registerInjection() async {
  await _registerServices();
  await _registerDataSources();
  await _registerRepositories();
  await _registerUseCases();
  await _registerBlocs();
}

FutureOr<void> _registerServices() async {
  _getIt.registerLazySingleton<FirebaseAuth>(
    () => FirebaseAuth.instance,
  );
}

FutureOr<void> _registerDataSources() async {
  _getIt.registerLazySingleton<RemoteAuthDataSource>(
    () => RemoteAuthDataSourceImpl(
      auth: _getIt(),
    ),
  );
}

FutureOr<void> _registerRepositories() async {
  _getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteAuthDataSource: _getIt(),
    ),
  );
}

FutureOr<void> _registerUseCases() async {
  _getIt
    ..registerLazySingleton<LogInCase>(
      () => LogInCase(
        authRepository: _getIt(),
      ),
    )
    ..registerLazySingleton<SignUpCase>(
      () => SignUpCase(
        authRepository: _getIt(),
      ),
    );
}

FutureOr<void> _registerBlocs() async {
  _getIt
    ..registerFactory<LogInBloc>(
      () => LogInBloc(
        talker: _getIt(),
        logInCase: _getIt(),
      ),
    )
    ..registerFactory<SignUpBloc>(
      () => SignUpBloc(
        talker: _getIt(),
        signUpCase: _getIt(),
      ),
    );
}
