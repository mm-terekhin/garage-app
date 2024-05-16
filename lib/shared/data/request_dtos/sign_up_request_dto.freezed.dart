// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpRequestDto _$SignUpRequestDtoFromJson(Map<String, dynamic> json) {
  return _SignUpRequestDto.fromJson(json);
}

/// @nodoc
mixin _$SignUpRequestDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpRequestDtoCopyWith<SignUpRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestDtoCopyWith<$Res> {
  factory $SignUpRequestDtoCopyWith(
          SignUpRequestDto value, $Res Function(SignUpRequestDto) then) =
      _$SignUpRequestDtoCopyWithImpl<$Res, SignUpRequestDto>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignUpRequestDtoCopyWithImpl<$Res, $Val extends SignUpRequestDto>
    implements $SignUpRequestDtoCopyWith<$Res> {
  _$SignUpRequestDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$SignUpRequestDtoImplCopyWith<$Res>
    implements $SignUpRequestDtoCopyWith<$Res> {
  factory _$$SignUpRequestDtoImplCopyWith(_$SignUpRequestDtoImpl value,
          $Res Function(_$SignUpRequestDtoImpl) then) =
      __$$SignUpRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignUpRequestDtoImplCopyWithImpl<$Res>
    extends _$SignUpRequestDtoCopyWithImpl<$Res, _$SignUpRequestDtoImpl>
    implements _$$SignUpRequestDtoImplCopyWith<$Res> {
  __$$SignUpRequestDtoImplCopyWithImpl(_$SignUpRequestDtoImpl _value,
      $Res Function(_$SignUpRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpRequestDtoImpl(
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
class _$SignUpRequestDtoImpl implements _SignUpRequestDto {
  const _$SignUpRequestDtoImpl({required this.email, required this.password});

  factory _$SignUpRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpRequestDtoImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpRequestDto(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestDtoImpl &&
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
  _$$SignUpRequestDtoImplCopyWith<_$SignUpRequestDtoImpl> get copyWith =>
      __$$SignUpRequestDtoImplCopyWithImpl<_$SignUpRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _SignUpRequestDto implements SignUpRequestDto {
  const factory _SignUpRequestDto(
      {required final String email,
      required final String password}) = _$SignUpRequestDtoImpl;

  factory _SignUpRequestDto.fromJson(Map<String, dynamic> json) =
      _$SignUpRequestDtoImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignUpRequestDtoImplCopyWith<_$SignUpRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
