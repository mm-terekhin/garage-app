// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpForm {
  TextInput get login => throw _privateConstructorUsedError;
  TextInput get username => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;
  VerifiedPassword get rePassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)
        $default, {
    required TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)
        pure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        $default, {
    TResult? Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        pure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        $default, {
    TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        pure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpForm value) $default, {
    required TResult Function(_SignUpFormPure value) pure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpForm value)? $default, {
    TResult? Function(_SignUpFormPure value)? pure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpForm value)? $default, {
    TResult Function(_SignUpFormPure value)? pure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormCopyWith<SignUpForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormCopyWith<$Res> {
  factory $SignUpFormCopyWith(
          SignUpForm value, $Res Function(SignUpForm) then) =
      _$SignUpFormCopyWithImpl<$Res, SignUpForm>;
  @useResult
  $Res call(
      {TextInput login,
      TextInput username,
      PasswordInput password,
      VerifiedPassword rePassword});
}

/// @nodoc
class _$SignUpFormCopyWithImpl<$Res, $Val extends SignUpForm>
    implements $SignUpFormCopyWith<$Res> {
  _$SignUpFormCopyWithImpl(this._value, this._then);

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
    Object? rePassword = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as TextInput,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as TextInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      rePassword: null == rePassword
          ? _value.rePassword
          : rePassword // ignore: cast_nullable_to_non_nullable
              as VerifiedPassword,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpFormImplCopyWith<$Res>
    implements $SignUpFormCopyWith<$Res> {
  factory _$$SignUpFormImplCopyWith(
          _$SignUpFormImpl value, $Res Function(_$SignUpFormImpl) then) =
      __$$SignUpFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextInput login,
      TextInput username,
      PasswordInput password,
      VerifiedPassword rePassword});
}

/// @nodoc
class __$$SignUpFormImplCopyWithImpl<$Res>
    extends _$SignUpFormCopyWithImpl<$Res, _$SignUpFormImpl>
    implements _$$SignUpFormImplCopyWith<$Res> {
  __$$SignUpFormImplCopyWithImpl(
      _$SignUpFormImpl _value, $Res Function(_$SignUpFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? username = null,
    Object? password = null,
    Object? rePassword = null,
  }) {
    return _then(_$SignUpFormImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as TextInput,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as TextInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      rePassword: null == rePassword
          ? _value.rePassword
          : rePassword // ignore: cast_nullable_to_non_nullable
              as VerifiedPassword,
    ));
  }
}

/// @nodoc

class _$SignUpFormImpl extends _SignUpForm {
  const _$SignUpFormImpl(
      {required this.login,
      required this.username,
      required this.password,
      required this.rePassword})
      : super._();

  @override
  final TextInput login;
  @override
  final TextInput username;
  @override
  final PasswordInput password;
  @override
  final VerifiedPassword rePassword;

  @override
  String toString() {
    return 'SignUpForm(login: $login, username: $username, password: $password, rePassword: $rePassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFormImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rePassword, rePassword) ||
                other.rePassword == rePassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, login, username, password, rePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFormImplCopyWith<_$SignUpFormImpl> get copyWith =>
      __$$SignUpFormImplCopyWithImpl<_$SignUpFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)
        $default, {
    required TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)
        pure,
  }) {
    return $default(login, username, password, rePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        $default, {
    TResult? Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        pure,
  }) {
    return $default?.call(login, username, password, rePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        $default, {
    TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        pure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(login, username, password, rePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpForm value) $default, {
    required TResult Function(_SignUpFormPure value) pure,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpForm value)? $default, {
    TResult? Function(_SignUpFormPure value)? pure,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpForm value)? $default, {
    TResult Function(_SignUpFormPure value)? pure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SignUpForm extends SignUpForm {
  const factory _SignUpForm(
      {required final TextInput login,
      required final TextInput username,
      required final PasswordInput password,
      required final VerifiedPassword rePassword}) = _$SignUpFormImpl;
  const _SignUpForm._() : super._();

  @override
  TextInput get login;
  @override
  TextInput get username;
  @override
  PasswordInput get password;
  @override
  VerifiedPassword get rePassword;
  @override
  @JsonKey(ignore: true)
  _$$SignUpFormImplCopyWith<_$SignUpFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpFormPureImplCopyWith<$Res>
    implements $SignUpFormCopyWith<$Res> {
  factory _$$SignUpFormPureImplCopyWith(_$SignUpFormPureImpl value,
          $Res Function(_$SignUpFormPureImpl) then) =
      __$$SignUpFormPureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextInput login,
      TextInput username,
      PasswordInput password,
      VerifiedPassword rePassword});
}

/// @nodoc
class __$$SignUpFormPureImplCopyWithImpl<$Res>
    extends _$SignUpFormCopyWithImpl<$Res, _$SignUpFormPureImpl>
    implements _$$SignUpFormPureImplCopyWith<$Res> {
  __$$SignUpFormPureImplCopyWithImpl(
      _$SignUpFormPureImpl _value, $Res Function(_$SignUpFormPureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? username = null,
    Object? password = null,
    Object? rePassword = null,
  }) {
    return _then(_$SignUpFormPureImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as TextInput,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as TextInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      rePassword: null == rePassword
          ? _value.rePassword
          : rePassword // ignore: cast_nullable_to_non_nullable
              as VerifiedPassword,
    ));
  }
}

/// @nodoc

class _$SignUpFormPureImpl extends _SignUpFormPure {
  const _$SignUpFormPureImpl(
      {this.login = const TextInput.pure(),
      this.username = const TextInput.pure(),
      this.password = const PasswordInput.pure(),
      this.rePassword = const VerifiedPassword.pure()})
      : super._();

  @override
  @JsonKey()
  final TextInput login;
  @override
  @JsonKey()
  final TextInput username;
  @override
  @JsonKey()
  final PasswordInput password;
  @override
  @JsonKey()
  final VerifiedPassword rePassword;

  @override
  String toString() {
    return 'SignUpForm.pure(login: $login, username: $username, password: $password, rePassword: $rePassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFormPureImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rePassword, rePassword) ||
                other.rePassword == rePassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, login, username, password, rePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFormPureImplCopyWith<_$SignUpFormPureImpl> get copyWith =>
      __$$SignUpFormPureImplCopyWithImpl<_$SignUpFormPureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)
        $default, {
    required TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)
        pure,
  }) {
    return pure(login, username, password, rePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        $default, {
    TResult? Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        pure,
  }) {
    return pure?.call(login, username, password, rePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        $default, {
    TResult Function(TextInput login, TextInput username,
            PasswordInput password, VerifiedPassword rePassword)?
        pure,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(login, username, password, rePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpForm value) $default, {
    required TResult Function(_SignUpFormPure value) pure,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpForm value)? $default, {
    TResult? Function(_SignUpFormPure value)? pure,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpForm value)? $default, {
    TResult Function(_SignUpFormPure value)? pure,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }
}

abstract class _SignUpFormPure extends SignUpForm {
  const factory _SignUpFormPure(
      {final TextInput login,
      final TextInput username,
      final PasswordInput password,
      final VerifiedPassword rePassword}) = _$SignUpFormPureImpl;
  const _SignUpFormPure._() : super._();

  @override
  TextInput get login;
  @override
  TextInput get username;
  @override
  PasswordInput get password;
  @override
  VerifiedPassword get rePassword;
  @override
  @JsonKey(ignore: true)
  _$$SignUpFormPureImplCopyWith<_$SignUpFormPureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
