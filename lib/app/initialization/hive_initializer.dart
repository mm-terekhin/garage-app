import 'package:hive_flutter/hive_flutter.dart';
import '../../shared/shared.dart';

Future<void> initializeHive() async {
  await Hive.initFlutter();

  Hive.registerAdapter(LocaleAdapter());

  //Hive.deleteBoxFromDisk('Name disk');
}
