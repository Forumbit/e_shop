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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
    required TResult Function(String email) onResetPassword,
    required TResult Function() onLoginWithGmail,
    required TResult Function(
      String email,
      String password,
      String repeatPassword,
    )
    onSignUp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? onLogin,
    TResult? Function(String email)? onResetPassword,
    TResult? Function()? onLoginWithGmail,
    TResult? Function(String email, String password, String repeatPassword)?
    onSignUp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? onLogin,
    TResult Function(String email)? onResetPassword,
    TResult Function()? onLoginWithGmail,
    TResult Function(String email, String password, String repeatPassword)?
    onSignUp,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnResetPassword value) onResetPassword,
    required TResult Function(_OnLoginWithGmaill value) onLoginWithGmail,
    required TResult Function(_OnSignUp value) onSignUp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnResetPassword value)? onResetPassword,
    TResult? Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnResetPassword value)? onResetPassword,
    TResult Function(_OnLoginWithGmaill value)? onLoginWithGmail,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
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
      String email,
      String password,
      String repeatPassword,
    )
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
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnLoginImplCopyWith<$Res> {
  factory _$$OnLoginImplCopyWith(
    _$OnLoginImpl value,
    $Res Function(_$OnLoginImpl) then,
  ) = __$$OnLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$OnLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnLoginImpl>
    implements _$$OnLoginImplCopyWith<$Res> {
  __$$OnLoginImplCopyWithImpl(
    _$OnLoginImpl _value,
    $Res Function(_$OnLoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _$OnLoginImpl(
        null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OnLoginImpl implements _OnLogin {
  const _$OnLoginImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.onLogin(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLoginImplCopyWith<_$OnLoginImpl> get copyWith =>
      __$$OnLoginImplCopyWithImpl<_$OnLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
    required TResult Function(String email) onResetPassword,
    required TResult Function() onLoginWithGmail,
    required TResult Function(
      String email,
      String password,
      String repeatPassword,
    )
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
      _$OnLoginImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnLoginImplCopyWith<_$OnLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnResetPasswordImplCopyWith<$Res> {
  factory _$$OnResetPasswordImplCopyWith(
    _$OnResetPasswordImpl value,
    $Res Function(_$OnResetPasswordImpl) then,
  ) = __$$OnResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$OnResetPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnResetPasswordImpl>
    implements _$$OnResetPasswordImplCopyWith<$Res> {
  __$$OnResetPasswordImplCopyWithImpl(
    _$OnResetPasswordImpl _value,
    $Res Function(_$OnResetPasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$OnResetPasswordImpl(
        null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OnResetPasswordImpl implements _OnResetPassword {
  const _$OnResetPasswordImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.onResetPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnResetPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnResetPasswordImplCopyWith<_$OnResetPasswordImpl> get copyWith =>
      __$$OnResetPasswordImplCopyWithImpl<_$OnResetPasswordImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
    required TResult Function(String email) onResetPassword,
    required TResult Function() onLoginWithGmail,
    required TResult Function(
      String email,
      String password,
      String repeatPassword,
    )
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
  const factory _OnResetPassword(final String email) = _$OnResetPasswordImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnResetPasswordImplCopyWith<_$OnResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLoginWithGmaillImplCopyWith<$Res> {
  factory _$$OnLoginWithGmaillImplCopyWith(
    _$OnLoginWithGmaillImpl value,
    $Res Function(_$OnLoginWithGmaillImpl) then,
  ) = __$$OnLoginWithGmaillImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoginWithGmaillImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnLoginWithGmaillImpl>
    implements _$$OnLoginWithGmaillImplCopyWith<$Res> {
  __$$OnLoginWithGmaillImplCopyWithImpl(
    _$OnLoginWithGmaillImpl _value,
    $Res Function(_$OnLoginWithGmaillImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLoginWithGmaillImpl implements _OnLoginWithGmaill {
  const _$OnLoginWithGmaillImpl();

  @override
  String toString() {
    return 'AuthEvent.onLoginWithGmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoginWithGmaillImpl);
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
      String email,
      String password,
      String repeatPassword,
    )
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
  const factory _OnLoginWithGmaill() = _$OnLoginWithGmaillImpl;
}

/// @nodoc
abstract class _$$OnSignUpImplCopyWith<$Res> {
  factory _$$OnSignUpImplCopyWith(
    _$OnSignUpImpl value,
    $Res Function(_$OnSignUpImpl) then,
  ) = __$$OnSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String repeatPassword});
}

/// @nodoc
class __$$OnSignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnSignUpImpl>
    implements _$$OnSignUpImplCopyWith<$Res> {
  __$$OnSignUpImplCopyWithImpl(
    _$OnSignUpImpl _value,
    $Res Function(_$OnSignUpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(
      _$OnSignUpImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$OnSignUpImpl implements _OnSignUp {
  const _$OnSignUpImpl(this.email, this.password, this.repeatPassword);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSignUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, repeatPassword);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSignUpImplCopyWith<_$OnSignUpImpl> get copyWith =>
      __$$OnSignUpImplCopyWithImpl<_$OnSignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) onLogin,
    required TResult Function(String email) onResetPassword,
    required TResult Function() onLoginWithGmail,
    required TResult Function(
      String email,
      String password,
      String repeatPassword,
    )
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
  const factory _OnSignUp(
    final String email,
    final String password,
    final String repeatPassword,
  ) = _$OnSignUpImpl;

  String get email;
  String get password;
  String get repeatPassword;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSignUpImplCopyWith<_$OnSignUpImpl> get copyWith =>
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
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message, bool error)? message,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message, bool error)? message,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Message value) message,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Message value)? message,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Message value)? message,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
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
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
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
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
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
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
    _$MessageImpl value,
    $Res Function(_$MessageImpl) then,
  ) = __$$MessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, bool error});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
    _$MessageImpl _value,
    $Res Function(_$MessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? error = null}) {
    return _then(
      _$MessageImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$MessageImpl implements _Message {
  const _$MessageImpl(this.message, this.error);

  @override
  final String message;
  @override
  final bool error;

  @override
  String toString() {
    return 'AuthState.message(message: $message, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

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
  const factory _Message(final String message, final bool error) =
      _$MessageImpl;

  String get message;
  bool get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
