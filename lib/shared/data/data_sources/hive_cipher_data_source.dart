import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract interface class HiveCipherDataSource {
  Future<HiveAesCipher> getCipher();
}

class HiveCipherDataSourceImpl extends HiveCipherDataSource {
  HiveCipherDataSourceImpl({
    required FlutterSecureStorage secureStorage,
    required HiveInterface hive,
    required Base64Codec base64codec,
  })  : _secureStorage = secureStorage,
        _hive = hive,
        _base64codec = base64codec;

  static const cipherKey = 'cipherKey';

  final FlutterSecureStorage _secureStorage;
  final HiveInterface _hive;
  final Base64Codec _base64codec;

  @override
  Future<HiveAesCipher> getCipher() async {
    var encodedSecureKey = await _secureStorage.read(
      key: cipherKey,
    );

    if (encodedSecureKey == null) {
      final generatedKey = _hive.generateSecureKey();
      encodedSecureKey = _base64codec.encode(generatedKey);
      await _secureStorage.write(key: cipherKey, value: encodedSecureKey);
    }

    final secureKey = _base64codec.decode(encodedSecureKey);

    return HiveAesCipher(secureKey);
  }
}
