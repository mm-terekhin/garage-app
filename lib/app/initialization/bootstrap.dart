import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import '../app.dart';
import '../i18n/strings.g.dart';
import 'hive_initializer.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await registerTalker();

  final talker = GetIt.instance<Talker>();

  final talkerBloc = GetIt.instance<TalkerBlocObserver>();

  FlutterError.onError = (details) => talker.handle(
        details.exception,
        details.stack,
      );

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Firebase.initializeApp();

      await initializeHive();

      await registerInjection();

      await GetIt.instance.allReady();

      Bloc.observer = talkerBloc;
      runApp(
        TranslationProvider(
          child: await builder(),
        ),
      );
    },
    (error, stackTrace) => talker.handle(error.toString(), stackTrace),
  );
}
