import 'dart:ui';
import 'package:hive/hive.dart';

class LocaleAdapter extends TypeAdapter<Locale> {
  @override
  final int typeId = 0;

  @override
  Locale read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Locale(
      fields[0] as String,
      fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Locale obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.languageCode)
      ..writeByte(1)
      ..write(obj.countryCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is LocaleAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}

