import 'package:hive_flutter/hive_flutter.dart';
import '../../shared/shared.dart';

Future<void> initializeHive() async {
  await Hive.initFlutter();

  Hive
    ..registerAdapter(LocaleHiveAdapter())
    ..registerAdapter(TokenHiveAdapter())
    ..registerAdapter(UserHiveAdapter())
    ..registerAdapter(UserSessionHiveAdapter());

  //Hive.deleteBoxFromDisk('Name disk');
}
