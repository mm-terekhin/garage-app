// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_in_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogInRequestDto _$LogInRequestDtoFromJson(Map<String, dynamic> json) {
  return _LogInRequestDto.fromJson(json);
}

/// @nodoc
mixin _$LogInRequestDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogInRequestDtoCopyWith<LogInRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInRequestDtoCopyWith<$Res> {
  factory $LogInRequestDtoCopyWith(
          LogInRequestDto value, $Res Function(LogInRequestDto) then) =
      _$LogInRequestDtoCopyWithImpl<$Res, LogInRequestDto>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LogInRequestDtoCopyWithImpl<$Res, $Val extends LogInRequestDto>
    implements $LogInRequestDtoCopyWith<$Res> {
  _$LogInRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogInRequestDtoImplCopyWith<$Res>
    implements $LogInRequestDtoCopyWith<$Res> {
  factory _$$LogInRequestDtoImplCopyWith(_$LogInRequestDtoImpl value,
          $Res Function(_$LogInRequestDtoImpl) then) =
      __$$LogInRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LogInRequestDtoImplCopyWithImpl<$Res>
    extends _$LogInRequestDtoCopyWithImpl<$Res, _$LogInRequestDtoImpl>
    implements _$$LogInRequestDtoImplCopyWith<$Res> {
  __$$LogInRequestDtoImplCopyWithImpl(
      _$LogInRequestDtoImpl _value, $Res Function(_$LogInRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LogInRequestDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogInRequestDtoImpl implements _LogInRequestDto {
  const _$LogInRequestDtoImpl({required this.email, required this.password});

  factory _$LogInRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogInRequestDtoImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LogInRequestDto(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInRequestDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInRequestDtoImplCopyWith<_$LogInRequestDtoImpl> get copyWith =>
      __$$LogInRequestDtoImplCopyWithImpl<_$LogInRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogInRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _LogInRequestDto implements LogInRequestDto {
  const factory _LogInRequestDto(
      {required final String email,
      required final String password}) = _$LogInRequestDtoImpl;

  factory _LogInRequestDto.fromJson(Map<String, dynamic> json) =
      _$LogInRequestDtoImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LogInRequestDtoImplCopyWith<_$LogInRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
