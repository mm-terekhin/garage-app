// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpData {
  String get login => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpDataCopyWith<SignUpData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpDataCopyWith<$Res> {
  factory $SignUpDataCopyWith(
          SignUpData value, $Res Function(SignUpData) then) =
      _$SignUpDataCopyWithImpl<$Res, SignUpData>;
  @useResult
  $Res call({String login, String username, String password});
}

/// @nodoc
class _$SignUpDataCopyWithImpl<$Res, $Val extends SignUpData>
    implements $SignUpDataCopyWith<$Res> {
  _$SignUpDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpDataImplCopyWith<$Res>
    implements $SignUpDataCopyWith<$Res> {
  factory _$$SignUpDataImplCopyWith(
          _$SignUpDataImpl value, $Res Function(_$SignUpDataImpl) then) =
      __$$SignUpDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String username, String password});
}

/// @nodoc
class __$$SignUpDataImplCopyWithImpl<$Res>
    extends _$SignUpDataCopyWithImpl<$Res, _$SignUpDataImpl>
    implements _$$SignUpDataImplCopyWith<$Res> {
  __$$SignUpDataImplCopyWithImpl(
      _$SignUpDataImpl _value, $Res Function(_$SignUpDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$SignUpDataImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpDataImpl extends _SignUpData {
  const _$SignUpDataImpl(
      {required this.login, required this.username, required this.password})
      : super._();

  @override
  final String login;
  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpData(login: $login, username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpDataImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpDataImplCopyWith<_$SignUpDataImpl> get copyWith =>
      __$$SignUpDataImplCopyWithImpl<_$SignUpDataImpl>(this, _$identity);
}

abstract class _SignUpData extends SignUpData {
  const factory _SignUpData(
      {required final String login,
      required final String username,
      required final String password}) = _$SignUpDataImpl;
  const _SignUpData._() : super._();

  @override
  String get login;
  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignUpDataImplCopyWith<_$SignUpDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
