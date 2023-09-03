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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailVerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onSendEmailVerification,
    required TResult Function() onCheckEmailVerification,
    required TResult Function() onDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onSendEmailVerification,
    TResult? Function()? onCheckEmailVerification,
    TResult? Function()? onDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSendEmailVerification,
    TResult Function()? onCheckEmailVerification,
    TResult Function()? onDeleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnSendEmailVerification value)
        onSendEmailVerification,
    required TResult Function(_OnCheckEmailVerification value)
        onCheckEmailVerification,
    required TResult Function(_OnDeleteAccount value) onDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult? Function(_OnCheckEmailVerification value)?
        onCheckEmailVerification,
    TResult? Function(_OnDeleteAccount value)? onDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnSendEmailVerification value)? onSendEmailVerification,
    TResult Function(_OnCheckEmailVerification value)? onCheckEmailVerification,
    TResult Function(_OnDeleteAccount value)? onDeleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationEventCopyWith<$Res> {
  factory $EmailVerificationEventCopyWith(EmailVerificationEvent value,
          $Res Function(EmailVerificationEvent) then) =
      _$EmailVerificationEventCopyWithImpl<$Res, EmailVerificationEvent>;
}

/// @nodoc
class _$EmailVerificationEventCopyWithImpl<$Res,
        $Val extends EmailVerificationEvent>
    implements $EmailVerificationEventCopyWith<$Res> {
  _$EmailVerificationEventCopyWithImpl(this._value, this._then);

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
    extends _$EmailVerificationEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'EmailVerificationEvent.started'));
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
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_OnSendEmailVerificationCopyWith<$Res> {
  factory _$$_OnSendEmailVerificationCopyWith(_$_OnSendEmailVerification value,
          $Res Function(_$_OnSendEmailVerification) then) =
      __$$_OnSendEmailVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnSendEmailVerificationCopyWithImpl<$Res>
    extends _$EmailVerificationEventCopyWithImpl<$Res,
        _$_OnSendEmailVerification>
    implements _$$_OnSendEmailVerificationCopyWith<$Res> {
  __$$_OnSendEmailVerificationCopyWithImpl(_$_OnSendEmailVerification _value,
      $Res Function(_$_OnSendEmailVerification) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnSendEmailVerification
    with DiagnosticableTreeMixin
    implements _OnSendEmailVerification {
  const _$_OnSendEmailVerification();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationEvent.onSendEmailVerification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'EmailVerificationEvent.onSendEmailVerification'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSendEmailVerification);
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
  const factory _OnSendEmailVerification() = _$_OnSendEmailVerification;
}

/// @nodoc
abstract class _$$_OnCheckEmailVerificationCopyWith<$Res> {
  factory _$$_OnCheckEmailVerificationCopyWith(
          _$_OnCheckEmailVerification value,
          $Res Function(_$_OnCheckEmailVerification) then) =
      __$$_OnCheckEmailVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnCheckEmailVerificationCopyWithImpl<$Res>
    extends _$EmailVerificationEventCopyWithImpl<$Res,
        _$_OnCheckEmailVerification>
    implements _$$_OnCheckEmailVerificationCopyWith<$Res> {
  __$$_OnCheckEmailVerificationCopyWithImpl(_$_OnCheckEmailVerification _value,
      $Res Function(_$_OnCheckEmailVerification) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnCheckEmailVerification
    with DiagnosticableTreeMixin
    implements _OnCheckEmailVerification {
  const _$_OnCheckEmailVerification();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationEvent.onCheckEmailVerification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'EmailVerificationEvent.onCheckEmailVerification'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnCheckEmailVerification);
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
  const factory _OnCheckEmailVerification() = _$_OnCheckEmailVerification;
}

/// @nodoc
abstract class _$$_OnDeleteAccountCopyWith<$Res> {
  factory _$$_OnDeleteAccountCopyWith(
          _$_OnDeleteAccount value, $Res Function(_$_OnDeleteAccount) then) =
      __$$_OnDeleteAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnDeleteAccountCopyWithImpl<$Res>
    extends _$EmailVerificationEventCopyWithImpl<$Res, _$_OnDeleteAccount>
    implements _$$_OnDeleteAccountCopyWith<$Res> {
  __$$_OnDeleteAccountCopyWithImpl(
      _$_OnDeleteAccount _value, $Res Function(_$_OnDeleteAccount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnDeleteAccount
    with DiagnosticableTreeMixin
    implements _OnDeleteAccount {
  const _$_OnDeleteAccount();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationEvent.onDeleteAccount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'EmailVerificationEvent.onDeleteAccount'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnDeleteAccount);
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
  const factory _OnDeleteAccount() = _$_OnDeleteAccount;
}

/// @nodoc
mixin _$EmailVerificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() verified,
    required TResult Function() resended,
    required TResult Function() successfull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? verified,
    TResult? Function()? resended,
    TResult? Function()? successfull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? verified,
    TResult Function()? resended,
    TResult Function()? successfull,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Resended value) resended,
    required TResult Function(_SuccessFull value) successfull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Resended value)? resended,
    TResult? Function(_SuccessFull value)? successfull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Verified value)? verified,
    TResult Function(_Resended value)? resended,
    TResult Function(_SuccessFull value)? successfull,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationStateCopyWith<$Res> {
  factory $EmailVerificationStateCopyWith(EmailVerificationState value,
          $Res Function(EmailVerificationState) then) =
      _$EmailVerificationStateCopyWithImpl<$Res, EmailVerificationState>;
}

/// @nodoc
class _$EmailVerificationStateCopyWithImpl<$Res,
        $Val extends EmailVerificationState>
    implements $EmailVerificationStateCopyWith<$Res> {
  _$EmailVerificationStateCopyWithImpl(this._value, this._then);

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
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'EmailVerificationState.initial'));
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_VerifiedCopyWith<$Res> {
  factory _$$_VerifiedCopyWith(
          _$_Verified value, $Res Function(_$_Verified) then) =
      __$$_VerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifiedCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$_Verified>
    implements _$$_VerifiedCopyWith<$Res> {
  __$$_VerifiedCopyWithImpl(
      _$_Verified _value, $Res Function(_$_Verified) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Verified with DiagnosticableTreeMixin implements _Verified {
  const _$_Verified();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationState.verified()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'EmailVerificationState.verified'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Verified);
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
  const factory _Verified() = _$_Verified;
}

/// @nodoc
abstract class _$$_ResendedCopyWith<$Res> {
  factory _$$_ResendedCopyWith(
          _$_Resended value, $Res Function(_$_Resended) then) =
      __$$_ResendedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResendedCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$_Resended>
    implements _$$_ResendedCopyWith<$Res> {
  __$$_ResendedCopyWithImpl(
      _$_Resended _value, $Res Function(_$_Resended) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Resended with DiagnosticableTreeMixin implements _Resended {
  const _$_Resended();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationState.resended()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'EmailVerificationState.resended'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Resended);
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
  const factory _Resended() = _$_Resended;
}

/// @nodoc
abstract class _$$_SuccessFullCopyWith<$Res> {
  factory _$$_SuccessFullCopyWith(
          _$_SuccessFull value, $Res Function(_$_SuccessFull) then) =
      __$$_SuccessFullCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessFullCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$_SuccessFull>
    implements _$$_SuccessFullCopyWith<$Res> {
  __$$_SuccessFullCopyWithImpl(
      _$_SuccessFull _value, $Res Function(_$_SuccessFull) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessFull with DiagnosticableTreeMixin implements _SuccessFull {
  const _$_SuccessFull();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailVerificationState.successfull()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'EmailVerificationState.successfull'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessFull);
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
  const factory _SuccessFull() = _$_SuccessFull;
}
