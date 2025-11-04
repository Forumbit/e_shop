// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EmailVerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onSendEmailVerification,
    required TResult Function() onCheckEmailVerification,
    required TResult Function() onDeleteAccount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onSendEmailVerification,
    TResult? Function()? onCheckEmailVerification,
    TResult? Function()? onDeleteAccount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSendEmailVerification,
    TResult Function()? onCheckEmailVerification,
    TResult Function()? onDeleteAccount,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnSendEmailVerification value)
    onSendEmailVerification,
    required TResult Function(_OnCheckEmailVerification value)
    onCheckEmailVerification,
    required TResult Function(_OnDeleteAccount value) onDeleteAccount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult? Function(_OnCheckEmailVerification value)?
    onCheckEmailVerification,
    TResult? Function(_OnDeleteAccount value)? onDeleteAccount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult Function(_OnCheckEmailVerification value)? onCheckEmailVerification,
    TResult Function(_OnDeleteAccount value)? onDeleteAccount,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationEventCopyWith<$Res> {
  factory $EmailVerificationEventCopyWith(
    EmailVerificationEvent value,
    $Res Function(EmailVerificationEvent) then,
  ) = _$EmailVerificationEventCopyWithImpl<$Res, EmailVerificationEvent>;
}

/// @nodoc
class _$EmailVerificationEventCopyWithImpl<
  $Res,
  $Val extends EmailVerificationEvent
>
    implements $EmailVerificationEventCopyWith<$Res> {
  _$EmailVerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailVerificationEvent
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
    extends _$EmailVerificationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmailVerificationEvent.started'));
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
    required TResult Function() onSendEmailVerification,
    required TResult Function() onCheckEmailVerification,
    required TResult Function() onDeleteAccount,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onSendEmailVerification,
    TResult? Function()? onCheckEmailVerification,
    TResult? Function()? onDeleteAccount,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSendEmailVerification,
    TResult Function()? onCheckEmailVerification,
    TResult Function()? onDeleteAccount,
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
    required TResult Function(_OnSendEmailVerification value)
    onSendEmailVerification,
    required TResult Function(_OnCheckEmailVerification value)
    onCheckEmailVerification,
    required TResult Function(_OnDeleteAccount value) onDeleteAccount,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult? Function(_OnCheckEmailVerification value)?
    onCheckEmailVerification,
    TResult? Function(_OnDeleteAccount value)? onDeleteAccount,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult Function(_OnCheckEmailVerification value)? onCheckEmailVerification,
    TResult Function(_OnDeleteAccount value)? onDeleteAccount,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EmailVerificationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnSendEmailVerificationImplCopyWith<$Res> {
  factory _$$OnSendEmailVerificationImplCopyWith(
    _$OnSendEmailVerificationImpl value,
    $Res Function(_$OnSendEmailVerificationImpl) then,
  ) = __$$OnSendEmailVerificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSendEmailVerificationImplCopyWithImpl<$Res>
    extends
        _$EmailVerificationEventCopyWithImpl<
          $Res,
          _$OnSendEmailVerificationImpl
        >
    implements _$$OnSendEmailVerificationImplCopyWith<$Res> {
  __$$OnSendEmailVerificationImplCopyWithImpl(
    _$OnSendEmailVerificationImpl _value,
    $Res Function(_$OnSendEmailVerificationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSendEmailVerificationImpl
    with DiagnosticableTreeMixin
    implements _OnSendEmailVerification {
  const _$OnSendEmailVerificationImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationEvent.onSendEmailVerification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(
      DiagnosticsProperty(
        'type',
        'EmailVerificationEvent.onSendEmailVerification',
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSendEmailVerificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onSendEmailVerification,
    required TResult Function() onCheckEmailVerification,
    required TResult Function() onDeleteAccount,
  }) {
    return onSendEmailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onSendEmailVerification,
    TResult? Function()? onCheckEmailVerification,
    TResult? Function()? onDeleteAccount,
  }) {
    return onSendEmailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSendEmailVerification,
    TResult Function()? onCheckEmailVerification,
    TResult Function()? onDeleteAccount,
    required TResult orElse(),
  }) {
    if (onSendEmailVerification != null) {
      return onSendEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnSendEmailVerification value)
    onSendEmailVerification,
    required TResult Function(_OnCheckEmailVerification value)
    onCheckEmailVerification,
    required TResult Function(_OnDeleteAccount value) onDeleteAccount,
  }) {
    return onSendEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult? Function(_OnCheckEmailVerification value)?
    onCheckEmailVerification,
    TResult? Function(_OnDeleteAccount value)? onDeleteAccount,
  }) {
    return onSendEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult Function(_OnCheckEmailVerification value)? onCheckEmailVerification,
    TResult Function(_OnDeleteAccount value)? onDeleteAccount,
    required TResult orElse(),
  }) {
    if (onSendEmailVerification != null) {
      return onSendEmailVerification(this);
    }
    return orElse();
  }
}

abstract class _OnSendEmailVerification implements EmailVerificationEvent {
  const factory _OnSendEmailVerification() = _$OnSendEmailVerificationImpl;
}

/// @nodoc
abstract class _$$OnCheckEmailVerificationImplCopyWith<$Res> {
  factory _$$OnCheckEmailVerificationImplCopyWith(
    _$OnCheckEmailVerificationImpl value,
    $Res Function(_$OnCheckEmailVerificationImpl) then,
  ) = __$$OnCheckEmailVerificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnCheckEmailVerificationImplCopyWithImpl<$Res>
    extends
        _$EmailVerificationEventCopyWithImpl<
          $Res,
          _$OnCheckEmailVerificationImpl
        >
    implements _$$OnCheckEmailVerificationImplCopyWith<$Res> {
  __$$OnCheckEmailVerificationImplCopyWithImpl(
    _$OnCheckEmailVerificationImpl _value,
    $Res Function(_$OnCheckEmailVerificationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnCheckEmailVerificationImpl
    with DiagnosticableTreeMixin
    implements _OnCheckEmailVerification {
  const _$OnCheckEmailVerificationImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationEvent.onCheckEmailVerification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(
      DiagnosticsProperty(
        'type',
        'EmailVerificationEvent.onCheckEmailVerification',
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCheckEmailVerificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onSendEmailVerification,
    required TResult Function() onCheckEmailVerification,
    required TResult Function() onDeleteAccount,
  }) {
    return onCheckEmailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onSendEmailVerification,
    TResult? Function()? onCheckEmailVerification,
    TResult? Function()? onDeleteAccount,
  }) {
    return onCheckEmailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSendEmailVerification,
    TResult Function()? onCheckEmailVerification,
    TResult Function()? onDeleteAccount,
    required TResult orElse(),
  }) {
    if (onCheckEmailVerification != null) {
      return onCheckEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnSendEmailVerification value)
    onSendEmailVerification,
    required TResult Function(_OnCheckEmailVerification value)
    onCheckEmailVerification,
    required TResult Function(_OnDeleteAccount value) onDeleteAccount,
  }) {
    return onCheckEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult? Function(_OnCheckEmailVerification value)?
    onCheckEmailVerification,
    TResult? Function(_OnDeleteAccount value)? onDeleteAccount,
  }) {
    return onCheckEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult Function(_OnCheckEmailVerification value)? onCheckEmailVerification,
    TResult Function(_OnDeleteAccount value)? onDeleteAccount,
    required TResult orElse(),
  }) {
    if (onCheckEmailVerification != null) {
      return onCheckEmailVerification(this);
    }
    return orElse();
  }
}

abstract class _OnCheckEmailVerification implements EmailVerificationEvent {
  const factory _OnCheckEmailVerification() = _$OnCheckEmailVerificationImpl;
}

/// @nodoc
abstract class _$$OnDeleteAccountImplCopyWith<$Res> {
  factory _$$OnDeleteAccountImplCopyWith(
    _$OnDeleteAccountImpl value,
    $Res Function(_$OnDeleteAccountImpl) then,
  ) = __$$OnDeleteAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnDeleteAccountImplCopyWithImpl<$Res>
    extends _$EmailVerificationEventCopyWithImpl<$Res, _$OnDeleteAccountImpl>
    implements _$$OnDeleteAccountImplCopyWith<$Res> {
  __$$OnDeleteAccountImplCopyWithImpl(
    _$OnDeleteAccountImpl _value,
    $Res Function(_$OnDeleteAccountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnDeleteAccountImpl
    with DiagnosticableTreeMixin
    implements _OnDeleteAccount {
  const _$OnDeleteAccountImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationEvent.onDeleteAccount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(
      DiagnosticsProperty('type', 'EmailVerificationEvent.onDeleteAccount'),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnDeleteAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onSendEmailVerification,
    required TResult Function() onCheckEmailVerification,
    required TResult Function() onDeleteAccount,
  }) {
    return onDeleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onSendEmailVerification,
    TResult? Function()? onCheckEmailVerification,
    TResult? Function()? onDeleteAccount,
  }) {
    return onDeleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSendEmailVerification,
    TResult Function()? onCheckEmailVerification,
    TResult Function()? onDeleteAccount,
    required TResult orElse(),
  }) {
    if (onDeleteAccount != null) {
      return onDeleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnSendEmailVerification value)
    onSendEmailVerification,
    required TResult Function(_OnCheckEmailVerification value)
    onCheckEmailVerification,
    required TResult Function(_OnDeleteAccount value) onDeleteAccount,
  }) {
    return onDeleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult? Function(_OnCheckEmailVerification value)?
    onCheckEmailVerification,
    TResult? Function(_OnDeleteAccount value)? onDeleteAccount,
  }) {
    return onDeleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult Function(_OnCheckEmailVerification value)? onCheckEmailVerification,
    TResult Function(_OnDeleteAccount value)? onDeleteAccount,
    required TResult orElse(),
  }) {
    if (onDeleteAccount != null) {
      return onDeleteAccount(this);
    }
    return orElse();
  }
}

abstract class _OnDeleteAccount implements EmailVerificationEvent {
  const factory _OnDeleteAccount() = _$OnDeleteAccountImpl;
}

/// @nodoc
mixin _$EmailVerificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verified,
    required TResult Function() resended,
    required TResult Function() successfull,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? resended,
    TResult? Function()? successfull,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? resended,
    TResult Function()? successfull,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Resended value) resended,
    required TResult Function(_SuccessFull value) successfull,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Resended value)? resended,
    TResult? Function(_SuccessFull value)? successfull,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_Resended value)? resended,
    TResult Function(_SuccessFull value)? successfull,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationStateCopyWith<$Res> {
  factory $EmailVerificationStateCopyWith(
    EmailVerificationState value,
    $Res Function(EmailVerificationState) then,
  ) = _$EmailVerificationStateCopyWithImpl<$Res, EmailVerificationState>;
}

/// @nodoc
class _$EmailVerificationStateCopyWithImpl<
  $Res,
  $Val extends EmailVerificationState
>
    implements $EmailVerificationStateCopyWith<$Res> {
  _$EmailVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailVerificationState
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
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmailVerificationState.initial'));
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
    required TResult Function() verified,
    required TResult Function() resended,
    required TResult Function() successfull,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? resended,
    TResult? Function()? successfull,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? resended,
    TResult Function()? successfull,
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
    required TResult Function(_Verified value) verified,
    required TResult Function(_Resended value) resended,
    required TResult Function(_SuccessFull value) successfull,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Resended value)? resended,
    TResult? Function(_SuccessFull value)? successfull,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_Resended value)? resended,
    TResult Function(_SuccessFull value)? successfull,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmailVerificationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$VerifiedImplCopyWith<$Res> {
  factory _$$VerifiedImplCopyWith(
    _$VerifiedImpl value,
    $Res Function(_$VerifiedImpl) then,
  ) = __$$VerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifiedImplCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$VerifiedImpl>
    implements _$$VerifiedImplCopyWith<$Res> {
  __$$VerifiedImplCopyWithImpl(
    _$VerifiedImpl _value,
    $Res Function(_$VerifiedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifiedImpl with DiagnosticableTreeMixin implements _Verified {
  const _$VerifiedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationState.verified()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmailVerificationState.verified'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verified,
    required TResult Function() resended,
    required TResult Function() successfull,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? resended,
    TResult? Function()? successfull,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? resended,
    TResult Function()? successfull,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Resended value) resended,
    required TResult Function(_SuccessFull value) successfull,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Resended value)? resended,
    TResult? Function(_SuccessFull value)? successfull,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_Resended value)? resended,
    TResult Function(_SuccessFull value)? successfull,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class _Verified implements EmailVerificationState {
  const factory _Verified() = _$VerifiedImpl;
}

/// @nodoc
abstract class _$$ResendedImplCopyWith<$Res> {
  factory _$$ResendedImplCopyWith(
    _$ResendedImpl value,
    $Res Function(_$ResendedImpl) then,
  ) = __$$ResendedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendedImplCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$ResendedImpl>
    implements _$$ResendedImplCopyWith<$Res> {
  __$$ResendedImplCopyWithImpl(
    _$ResendedImpl _value,
    $Res Function(_$ResendedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResendedImpl with DiagnosticableTreeMixin implements _Resended {
  const _$ResendedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationState.resended()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmailVerificationState.resended'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verified,
    required TResult Function() resended,
    required TResult Function() successfull,
  }) {
    return resended();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? resended,
    TResult? Function()? successfull,
  }) {
    return resended?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? resended,
    TResult Function()? successfull,
    required TResult orElse(),
  }) {
    if (resended != null) {
      return resended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Resended value) resended,
    required TResult Function(_SuccessFull value) successfull,
  }) {
    return resended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Resended value)? resended,
    TResult? Function(_SuccessFull value)? successfull,
  }) {
    return resended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_Resended value)? resended,
    TResult Function(_SuccessFull value)? successfull,
    required TResult orElse(),
  }) {
    if (resended != null) {
      return resended(this);
    }
    return orElse();
  }
}

abstract class _Resended implements EmailVerificationState {
  const factory _Resended() = _$ResendedImpl;
}

/// @nodoc
abstract class _$$SuccessFullImplCopyWith<$Res> {
  factory _$$SuccessFullImplCopyWith(
    _$SuccessFullImpl value,
    $Res Function(_$SuccessFullImpl) then,
  ) = __$$SuccessFullImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessFullImplCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$SuccessFullImpl>
    implements _$$SuccessFullImplCopyWith<$Res> {
  __$$SuccessFullImplCopyWithImpl(
    _$SuccessFullImpl _value,
    $Res Function(_$SuccessFullImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessFullImpl with DiagnosticableTreeMixin implements _SuccessFull {
  const _$SuccessFullImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationState.successfull()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmailVerificationState.successfull'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessFullImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verified,
    required TResult Function() resended,
    required TResult Function() successfull,
  }) {
    return successfull();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? resended,
    TResult? Function()? successfull,
  }) {
    return successfull?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? resended,
    TResult Function()? successfull,
    required TResult orElse(),
  }) {
    if (successfull != null) {
      return successfull();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Resended value) resended,
    required TResult Function(_SuccessFull value) successfull,
  }) {
    return successfull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Resended value)? resended,
    TResult? Function(_SuccessFull value)? successfull,
  }) {
    return successfull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_Resended value)? resended,
    TResult Function(_SuccessFull value)? successfull,
    required TResult orElse(),
  }) {
    if (successfull != null) {
      return successfull(this);
    }
    return orElse();
  }
}

abstract class _SuccessFull implements EmailVerificationState {
  const factory _SuccessFull() = _$SuccessFullImpl;
}
