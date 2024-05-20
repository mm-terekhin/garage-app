import 'package:hive/hive.dart';

import '../../shared.dart';

class TokenHiveAdapter extends TypeAdapter<TokenData> {
  @override
  final int typeId = 2;

  @override
  TokenData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return TokenData(
      accessToken: fields[0] as String,
      uid: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TokenData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.uid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokenHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
