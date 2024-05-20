// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_in_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogInForm {
  EmailInput get email => throw _privateConstructorUsedError;
  TextInput get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(EmailInput email, TextInput password) $default, {
    required TResult Function(EmailInput email, TextInput password) pure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(EmailInput email, TextInput password)? $default, {
    TResult? Function(EmailInput email, TextInput password)? pure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(EmailInput email, TextInput password)? $default, {
    TResult Function(EmailInput email, TextInput password)? pure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LogInForm value) $default, {
    required TResult Function(_LogInFormPure value) pure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LogInForm value)? $default, {
    TResult? Function(_LogInFormPure value)? pure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogInForm value)? $default, {
    TResult Function(_LogInFormPure value)? pure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInFormCopyWith<LogInForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInFormCopyWith<$Res> {
  factory $LogInFormCopyWith(LogInForm value, $Res Function(LogInForm) then) =
      _$LogInFormCopyWithImpl<$Res, LogInForm>;
  @useResult
  $Res call({EmailInput email, TextInput password});
}

/// @nodoc
class _$LogInFormCopyWithImpl<$Res, $Val extends LogInForm>
    implements $LogInFormCopyWith<$Res> {
  _$LogInFormCopyWithImpl(this._value, this._then);

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
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextInput,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogInFormPureImplCopyWith<$Res>
    implements $LogInFormCopyWith<$Res> {
  factory _$$LogInFormPureImplCopyWith(
          _$LogInFormPureImpl value, $Res Function(_$LogInFormPureImpl) then) =
      __$$LogInFormPureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailInput email, TextInput password});
}

/// @nodoc
class __$$LogInFormPureImplCopyWithImpl<$Res>
    extends _$LogInFormCopyWithImpl<$Res, _$LogInFormPureImpl>
    implements _$$LogInFormPureImplCopyWith<$Res> {
  __$$LogInFormPureImplCopyWithImpl(
      _$LogInFormPureImpl _value, $Res Function(_$LogInFormPureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LogInFormPureImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextInput,
    ));
  }
}

/// @nodoc

class _$LogInFormPureImpl extends _LogInFormPure {
  const _$LogInFormPureImpl(
      [this.email = const EmailInput.pure(),
      this.password = const TextInput.pure()])
      : super._();

  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final TextInput password;

  @override
  String toString() {
    return 'LogInForm.pure(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInFormPureImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInFormPureImplCopyWith<_$LogInFormPureImpl> get copyWith =>
      __$$LogInFormPureImplCopyWithImpl<_$LogInFormPureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(EmailInput email, TextInput password) $default, {
    required TResult Function(EmailInput email, TextInput password) pure,
  }) {
    return pure(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(EmailInput email, TextInput password)? $default, {
    TResult? Function(EmailInput email, TextInput password)? pure,
  }) {
    return pure?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(EmailInput email, TextInput password)? $default, {
    TResult Function(EmailInput email, TextInput password)? pure,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LogInForm value) $default, {
    required TResult Function(_LogInFormPure value) pure,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LogInForm value)? $default, {
    TResult? Function(_LogInFormPure value)? pure,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogInForm value)? $default, {
    TResult Function(_LogInFormPure value)? pure,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }
}

abstract class _LogInFormPure extends LogInForm {
  const factory _LogInFormPure(
      [final EmailInput email, final TextInput password]) = _$LogInFormPureImpl;
  const _LogInFormPure._() : super._();

  @override
  EmailInput get email;
  @override
  TextInput get password;
  @override
  @JsonKey(ignore: true)
  _$$LogInFormPureImplCopyWith<_$LogInFormPureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogInFormImplCopyWith<$Res>
    implements $LogInFormCopyWith<$Res> {
  factory _$$LogInFormImplCopyWith(
          _$LogInFormImpl value, $Res Function(_$LogInFormImpl) then) =
      __$$LogInFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailInput email, TextInput password});
}

/// @nodoc
class __$$LogInFormImplCopyWithImpl<$Res>
    extends _$LogInFormCopyWithImpl<$Res, _$LogInFormImpl>
    implements _$$LogInFormImplCopyWith<$Res> {
  __$$LogInFormImplCopyWithImpl(
      _$LogInFormImpl _value, $Res Function(_$LogInFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LogInFormImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextInput,
    ));
  }
}

/// @nodoc

class _$LogInFormImpl extends _LogInForm {
  const _$LogInFormImpl({required this.email, required this.password})
      : super._();

  @override
  final EmailInput email;
  @override
  final TextInput password;

  @override
  String toString() {
    return 'LogInForm(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInFormImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInFormImplCopyWith<_$LogInFormImpl> get copyWith =>
      __$$LogInFormImplCopyWithImpl<_$LogInFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(EmailInput email, TextInput password) $default, {
    required TResult Function(EmailInput email, TextInput password) pure,
  }) {
    return $default(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(EmailInput email, TextInput password)? $default, {
    TResult? Function(EmailInput email, TextInput password)? pure,
  }) {
    return $default?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(EmailInput email, TextInput password)? $default, {
    TResult Function(EmailInput email, TextInput password)? pure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LogInForm value) $default, {
    required TResult Function(_LogInFormPure value) pure,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LogInForm value)? $default, {
    TResult? Function(_LogInFormPure value)? pure,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LogInForm value)? $default, {
    TResult Function(_LogInFormPure value)? pure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _LogInForm extends LogInForm {
  const factory _LogInForm(
      {required final EmailInput email,
      required final TextInput password}) = _$LogInFormImpl;
  const _LogInForm._() : super._();

  @override
  EmailInput get email;
  @override
  TextInput get password;
  @override
  @JsonKey(ignore: true)
  _$$LogInFormImplCopyWith<_$LogInFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
