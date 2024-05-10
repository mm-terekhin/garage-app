// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogInRequestDtoImpl _$$LogInRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LogInRequestDtoImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LogInRequestDtoImplToJson(
        _$LogInRequestDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
