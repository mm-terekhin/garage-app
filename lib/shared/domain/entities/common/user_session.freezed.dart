// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserSession {
  TokenData? get token => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TokenData? token, User? user) $default, {
    required TResult Function(TokenData? token, User? user) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TokenData? token, User? user)? $default, {
    TResult? Function(TokenData? token, User? user)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TokenData? token, User? user)? $default, {
    TResult Function(TokenData? token, User? user)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserSession value) $default, {
    required TResult Function(_UserSessionEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserSession value)? $default, {
    TResult? Function(_UserSessionEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserSession value)? $default, {
    TResult Function(_UserSessionEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSessionCopyWith<UserSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSessionCopyWith<$Res> {
  factory $UserSessionCopyWith(
          UserSession value, $Res Function(UserSession) then) =
      _$UserSessionCopyWithImpl<$Res, UserSession>;
  @useResult
  $Res call({TokenData? token, User? user});

  $TokenDataCopyWith<$Res>? get token;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserSessionCopyWithImpl<$Res, $Val extends UserSession>
    implements $UserSessionCopyWith<$Res> {
  _$UserSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenData?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenDataCopyWith<$Res>? get token {
    if (_value.token == null) {
      return null;
    }

    return $TokenDataCopyWith<$Res>(_value.token!, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserSessionImplCopyWith<$Res>
    implements $UserSessionCopyWith<$Res> {
  factory _$$UserSessionImplCopyWith(
          _$UserSessionImpl value, $Res Function(_$UserSessionImpl) then) =
      __$$UserSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenData? token, User? user});

  @override
  $TokenDataCopyWith<$Res>? get token;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserSessionImplCopyWithImpl<$Res>
    extends _$UserSessionCopyWithImpl<$Res, _$UserSessionImpl>
    implements _$$UserSessionImplCopyWith<$Res> {
  __$$UserSessionImplCopyWithImpl(
      _$UserSessionImpl _value, $Res Function(_$UserSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_$UserSessionImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenData?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$UserSessionImpl implements _UserSession {
  const _$UserSessionImpl({required this.token, required this.user});

  @override
  final TokenData? token;
  @override
  final User? user;

  @override
  String toString() {
    return 'UserSession(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSessionImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSessionImplCopyWith<_$UserSessionImpl> get copyWith =>
      __$$UserSessionImplCopyWithImpl<_$UserSessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TokenData? token, User? user) $default, {
    required TResult Function(TokenData? token, User? user) empty,
  }) {
    return $default(token, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TokenData? token, User? user)? $default, {
    TResult? Function(TokenData? token, User? user)? empty,
  }) {
    return $default?.call(token, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TokenData? token, User? user)? $default, {
    TResult Function(TokenData? token, User? user)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(token, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserSession value) $default, {
    required TResult Function(_UserSessionEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserSession value)? $default, {
    TResult? Function(_UserSessionEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserSession value)? $default, {
    TResult Function(_UserSessionEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _UserSession implements UserSession {
  const factory _UserSession(
      {required final TokenData? token,
      required final User? user}) = _$UserSessionImpl;

  @override
  TokenData? get token;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$UserSessionImplCopyWith<_$UserSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserSessionEmptyImplCopyWith<$Res>
    implements $UserSessionCopyWith<$Res> {
  factory _$$UserSessionEmptyImplCopyWith(_$UserSessionEmptyImpl value,
          $Res Function(_$UserSessionEmptyImpl) then) =
      __$$UserSessionEmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenData? token, User? user});

  @override
  $TokenDataCopyWith<$Res>? get token;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserSessionEmptyImplCopyWithImpl<$Res>
    extends _$UserSessionCopyWithImpl<$Res, _$UserSessionEmptyImpl>
    implements _$$UserSessionEmptyImplCopyWith<$Res> {
  __$$UserSessionEmptyImplCopyWithImpl(_$UserSessionEmptyImpl _value,
      $Res Function(_$UserSessionEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_$UserSessionEmptyImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenData?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$UserSessionEmptyImpl implements _UserSessionEmpty {
  const _$UserSessionEmptyImpl({this.token = null, this.user = null});

  @override
  @JsonKey()
  final TokenData? token;
  @override
  @JsonKey()
  final User? user;

  @override
  String toString() {
    return 'UserSession.empty(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSessionEmptyImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSessionEmptyImplCopyWith<_$UserSessionEmptyImpl> get copyWith =>
      __$$UserSessionEmptyImplCopyWithImpl<_$UserSessionEmptyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TokenData? token, User? user) $default, {
    required TResult Function(TokenData? token, User? user) empty,
  }) {
    return empty(token, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TokenData? token, User? user)? $default, {
    TResult? Function(TokenData? token, User? user)? empty,
  }) {
    return empty?.call(token, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TokenData? token, User? user)? $default, {
    TResult Function(TokenData? token, User? user)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(token, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserSession value) $default, {
    required TResult Function(_UserSessionEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserSession value)? $default, {
    TResult? Function(_UserSessionEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserSession value)? $default, {
    TResult Function(_UserSessionEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _UserSessionEmpty implements UserSession {
  const factory _UserSessionEmpty({final TokenData? token, final User? user}) =
      _$UserSessionEmptyImpl;

  @override
  TokenData? get token;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$UserSessionEmptyImplCopyWith<_$UserSessionEmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
