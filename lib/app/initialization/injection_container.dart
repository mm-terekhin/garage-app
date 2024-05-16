import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:garage/features/features.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

final _getIt = GetIt.instance;

FutureOr<void> registerTalker() {
  _getIt
    ..registerLazySingleton<Talker>(Talker.new)
    ..registerLazySingleton<TalkerBlocObserver>(
      () => TalkerBlocObserver(
        settings: const TalkerBlocLoggerSettings(
          printStateFullData: false,
          printEventFullData: false,
        ),
      ),
    );
}

Future<void> registerInjection() async {
  await _registerServices();
  await _registerDataSources();
  await _registerRepositories();
  await _registerUseCases();
  await _registerBlocs();
}

FutureOr<void> _registerServices() async {
  _getIt
    //Auth
    ..registerLazySingleton<FirebaseAuth>(
      () => FirebaseAuth.instance,
    )
    //Hive
    ..registerLazySingleton<HiveInterface>(
      () => Hive,
    );
}

FutureOr<void> _registerDataSources() async {
  _getIt
    //Auth
    ..registerLazySingleton<RemoteAuthDataSource>(
      () => RemoteAuthDataSourceImpl(
        auth: _getIt(),
      ),
    )
    //Locale
    ..registerSingletonAsync<LocaleLocaleDataSource>(
      () async => LocaleLocaleDataSourceImpl.create(
        hive: _getIt(),
      ),
    );
}

FutureOr<void> _registerRepositories() async {
  _getIt
    //Auth
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        remoteAuthDataSource: _getIt(),
      ),
    )
    //Locale
    ..registerLazySingleton<LocaleRepository>(
      () => LocaleRepositoryImpl(
        localeDataSource: _getIt(),
      ),
    );
}

FutureOr<void> _registerUseCases() async {
  _getIt
    //Auth
    ..registerLazySingleton<LogInCase>(
      () => LogInCase(
        authRepository: _getIt(),
      ),
    )
    ..registerLazySingleton<SignUpCase>(
      () => SignUpCase(
        authRepository: _getIt(),
      ),
    )
    //Locale
    ..registerLazySingleton<GetLocaleCase>(
      () => GetLocaleCase(
        localeRepository: _getIt(),
      ),
    )
    ..registerLazySingleton<SetLocaleCase>(
      () => SetLocaleCase(
        localeRepository: _getIt(),
      ),
    );
}

FutureOr<void> _registerBlocs() async {
  _getIt
    //Auth
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
    )
    ..registerFactory<ResetPasswordBloc>(
      () => ResetPasswordBloc(),
    )
    //Locale
    ..registerFactory<LocaleCubit>(
      () => LocaleCubit(
        getLocaleCase: _getIt(),
        setLocaleCase: _getIt(),
      ),
    );
}
