// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_in_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogInData {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInDataCopyWith<LogInData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInDataCopyWith<$Res> {
  factory $LogInDataCopyWith(LogInData value, $Res Function(LogInData) then) =
      _$LogInDataCopyWithImpl<$Res, LogInData>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class _$LogInDataCopyWithImpl<$Res, $Val extends LogInData>
    implements $LogInDataCopyWith<$Res> {
  _$LogInDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogInDataImplCopyWith<$Res>
    implements $LogInDataCopyWith<$Res> {
  factory _$$LogInDataImplCopyWith(
          _$LogInDataImpl value, $Res Function(_$LogInDataImpl) then) =
      __$$LogInDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$LogInDataImplCopyWithImpl<$Res>
    extends _$LogInDataCopyWithImpl<$Res, _$LogInDataImpl>
    implements _$$LogInDataImplCopyWith<$Res> {
  __$$LogInDataImplCopyWithImpl(
      _$LogInDataImpl _value, $Res Function(_$LogInDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$LogInDataImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogInDataImpl extends _LogInData {
  const _$LogInDataImpl({required this.login, required this.password})
      : super._();

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'LogInData(login: $login, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInDataImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInDataImplCopyWith<_$LogInDataImpl> get copyWith =>
      __$$LogInDataImplCopyWithImpl<_$LogInDataImpl>(this, _$identity);
}

abstract class _LogInData extends LogInData {
  const factory _LogInData(
      {required final String login,
      required final String password}) = _$LogInDataImpl;
  const _LogInData._() : super._();

  @override
  String get login;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LogInDataImplCopyWith<_$LogInDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
