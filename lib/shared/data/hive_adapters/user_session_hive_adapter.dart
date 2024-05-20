import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/domain.dart';

class UserSessionHiveAdapter extends TypeAdapter<UserSession> {
  @override
  final int typeId = 3;

  @override
  UserSession read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserSession(
      token: fields[0] as TokenData?,
      user: fields[1] as User?,
    );
  }

  @override
  void write(BinaryWriter writer, UserSession obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.user);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is UserSessionHiveAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}

