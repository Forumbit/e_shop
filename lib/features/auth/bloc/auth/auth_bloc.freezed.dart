// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
    required TResult Function(String email) onResetPassword,
    required TResult Function() onLoginWithGmail,
    required TResult Function(
            String email, String password, String repeatPassword)
        onSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? onLogin,
    TResult? Function(String email)? onResetPassword,
    TResult? Function()? onLoginWithGmail,
    TResult? Function(String email, String password, String repeatPassword)?
        onSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? onLogin,
    TResult Function(String email)? onResetPassword,
    TResult Function()? onLoginWithGmail,
    TResult Function(String email, String password, String repeatPassword)?
        onSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnLoginWithGmaill value) onLoginWithGmail,
    required TResult Function(_OnSignUp value) onSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
    required TResult Function(String email) onResetPassword,
    required TResult Function() onLoginWithGmail,
    required TResult Function(
            String email, String password, String repeatPassword)
        onSignUp,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? onLogin,
    TResult? Function(String email)? onResetPassword,
    TResult? Function()? onLoginWithGmail,
    TResult? Function(String email, String password, String repeatPassword)?
        onSignUp,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? onLogin,
    TResult Function(String email)? onResetPassword,
    TResult Function()? onLoginWithGmail,
    TResult Function(String email, String password, String repeatPassword)?
        onSignUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnLoginWithGmaill value) onLoginWithGmail,
    required TResult Function(_OnSignUp value) onSignUp,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_OnLoginCopyWith<$Res> {
  factory _$$_OnLoginCopyWith(
          _$_OnLogin value, $Res Function(_$_OnLogin) then) =
      __$$_OnLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_OnLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_OnLogin>
    implements _$$_OnLoginCopyWith<$Res> {
  __$$_OnLoginCopyWithImpl(_$_OnLogin _value, $Res Function(_$_OnLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_OnLogin(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnLogin implements _OnLogin {
  const _$_OnLogin(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.onLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnLogin &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnLoginCopyWith<_$_OnLogin> get copyWith =>
      __$$_OnLoginCopyWithImpl<_$_OnLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
    required TResult Function(String email) onResetPassword,
    required TResult Function() onLoginWithGmail,
    required TResult Function(
            String email, String password, String repeatPassword)
        onSignUp,
  }) {
    return onLogin(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? onLogin,
    TResult? Function(String email)? onResetPassword,
    TResult? Function()? onLoginWithGmail,
    TResult? Function(String email, String password, String repeatPassword)?
        onSignUp,
  }) {
    return onLogin?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? onLogin,
    TResult Function(String email)? onResetPassword,
    TResult Function()? onLoginWithGmail,
    TResult Function(String email, String password, String repeatPassword)?
        onSignUp,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnLoginWithGmaill value) onLoginWithGmail,
    required TResult Function(_OnSignUp value) onSignUp,
  }) {
    return onLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) {
    return onLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(this);
    }
    return orElse();
  }
}

abstract class _OnLogin implements AuthEvent {
  const factory _OnLogin(final String email, final String password) =
      _$_OnLogin;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_OnLoginCopyWith<_$_OnLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnResetPasswordCopyWith<$Res> {
  factory _$$_OnResetPasswordCopyWith(
          _$_OnResetPassword value, $Res Function(_$_OnResetPassword) then) =
      __$$_OnResetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_OnResetPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_OnResetPassword>
    implements _$$_OnResetPasswordCopyWith<$Res> {
  __$$_OnResetPasswordCopyWithImpl(
      _$_OnResetPassword _value, $Res Function(_$_OnResetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_OnResetPassword(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnResetPassword implements _OnResetPassword {
  const _$_OnResetPassword(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.onResetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnResetPassword &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnResetPasswordCopyWith<_$_OnResetPassword> get copyWith =>
      __$$_OnResetPasswordCopyWithImpl<_$_OnResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
    required TResult Function(String email) onResetPassword,
    required TResult Function() onLoginWithGmail,
    required TResult Function(
            String email, String password, String repeatPassword)
        onSignUp,
  }) {
    return onResetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? onLogin,
    TResult? Function(String email)? onResetPassword,
    TResult? Function()? onLoginWithGmail,
    TResult? Function(String email, String password, String repeatPassword)?
        onSignUp,
  }) {
    return onResetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? onLogin,
    TResult Function(String email)? onResetPassword,
    TResult Function()? onLoginWithGmail,
    TResult Function(String email, String password, String repeatPassword)?
        onSignUp,
    required TResult orElse(),
  }) {
    if (onResetPassword != null) {
      return onResetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnLoginWithGmaill value) onLoginWithGmail,
    required TResult Function(_OnSignUp value) onSignUp,
  }) {
    return onResetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) {
    return onResetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) {
    if (onResetPassword != null) {
      return onResetPassword(this);
    }
    return orElse();
  }
}

abstract class _OnResetPassword implements AuthEvent {
  const factory _OnResetPassword(final String email) = _$_OnResetPassword;

  String get email;
  @JsonKey(ignore: true)
  _$$_OnResetPasswordCopyWith<_$_OnResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnLoginWithGmaillCopyWith<$Res> {
  factory _$$_OnLoginWithGmaillCopyWith(_$_OnLoginWithGmaill value,
          $Res Function(_$_OnLoginWithGmaill) then) =
      __$$_OnLoginWithGmaillCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnLoginWithGmaillCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_OnLoginWithGmaill>
    implements _$$_OnLoginWithGmaillCopyWith<$Res> {
  __$$_OnLoginWithGmaillCopyWithImpl(
      _$_OnLoginWithGmaill _value, $Res Function(_$_OnLoginWithGmaill) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnLoginWithGmaill implements _OnLoginWithGmaill {
  const _$_OnLoginWithGmaill();

  @override
  String toString() {
    return 'AuthEvent.onLoginWithGmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnLoginWithGmaill);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
    required TResult Function(String email) onResetPassword,
    required TResult Function() onLoginWithGmail,
    required TResult Function(
            String email, String password, String repeatPassword)
        onSignUp,
  }) {
    return onLoginWithGmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? onLogin,
    TResult? Function(String email)? onResetPassword,
    TResult? Function()? onLoginWithGmail,
    TResult? Function(String email, String password, String repeatPassword)?
        onSignUp,
  }) {
    return onLoginWithGmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? onLogin,
    TResult Function(String email)? onResetPassword,
    TResult Function()? onLoginWithGmail,
    TResult Function(String email, String password, String repeatPassword)?
        onSignUp,
    required TResult orElse(),
  }) {
    if (onLoginWithGmail != null) {
      return onLoginWithGmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnLoginWithGmaill value) onLoginWithGmail,
    required TResult Function(_OnSignUp value) onSignUp,
  }) {
    return onLoginWithGmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) {
    return onLoginWithGmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) {
    if (onLoginWithGmail != null) {
      return onLoginWithGmail(this);
    }
    return orElse();
  }
}

abstract class _OnLoginWithGmaill implements AuthEvent {
  const factory _OnLoginWithGmaill() = _$_OnLoginWithGmaill;
}

/// @nodoc
abstract class _$$_OnSignUpCopyWith<$Res> {
  factory _$$_OnSignUpCopyWith(
          _$_OnSignUp value, $Res Function(_$_OnSignUp) then) =
      __$$_OnSignUpCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String repeatPassword});
}

/// @nodoc
class __$$_OnSignUpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_OnSignUp>
    implements _$$_OnSignUpCopyWith<$Res> {
  __$$_OnSignUpCopyWithImpl(
      _$_OnSignUp _value, $Res Function(_$_OnSignUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(_$_OnSignUp(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnSignUp implements _OnSignUp {
  const _$_OnSignUp(this.email, this.password, this.repeatPassword);

  @override
  final String email;
  @override
  final String password;
  @override
  final String repeatPassword;

  @override
  String toString() {
    return 'AuthEvent.onSignUp(email: $email, password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSignUp &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, repeatPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSignUpCopyWith<_$_OnSignUp> get copyWith =>
      __$$_OnSignUpCopyWithImpl<_$_OnSignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
    required TResult Function(String email) onResetPassword,
    required TResult Function() onLoginWithGmail,
    required TResult Function(
            String email, String password, String repeatPassword)
        onSignUp,
  }) {
    return onSignUp(email, password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? onLogin,
    TResult? Function(String email)? onResetPassword,
    TResult? Function()? onLoginWithGmail,
    TResult? Function(String email, String password, String repeatPassword)?
        onSignUp,
  }) {
    return onSignUp?.call(email, password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? onLogin,
    TResult Function(String email)? onResetPassword,
    TResult Function()? onLoginWithGmail,
    TResult Function(String email, String password, String repeatPassword)?
        onSignUp,
    required TResult orElse(),
  }) {
    if (onSignUp != null) {
      return onSignUp(email, password, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnLoginWithGmaill value) onLoginWithGmail,
    required TResult Function(_OnSignUp value) onSignUp,
  }) {
    return onSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) {
    return onSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) {
    if (onSignUp != null) {
      return onSignUp(this);
    }
    return orElse();
  }
}

abstract class _OnSignUp implements AuthEvent {
  const factory _OnSignUp(final String email, final String password,
      final String repeatPassword) = _$_OnSignUp;

  String get email;
  String get password;
  String get repeatPassword;
  @JsonKey(ignore: true)
  _$$_OnSignUpCopyWith<_$_OnSignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message, bool error) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message, bool error)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message, bool error)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Message value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Message value)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message, bool error) message,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message, bool error)? message,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message, bool error)? message,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Message value) message,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Message value)? message,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message, bool error) message,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message, bool error)? message,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message, bool error)? message,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Message value) message,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Message value)? message,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message, bool error) message,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message, bool error)? message,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message, bool error)? message,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Message value) message,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Message value)? message,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, bool error});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$_Message(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Message implements _Message {
  const _$_Message(this.message, this.error);

  @override
  final String message;
  @override
  final bool error;

  @override
  String toString() {
    return 'AuthState.message(message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message, bool error) message,
  }) {
    return message(this.message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message, bool error)? message,
  }) {
    return message?.call(this.message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message, bool error)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this.message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Message value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Message value)? message,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _Message implements AuthState {
  const factory _Message(final String message, final bool error) = _$_Message;

  String get message;
  bool get error;
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
