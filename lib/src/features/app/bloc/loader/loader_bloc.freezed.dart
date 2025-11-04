// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LoaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoaderEventCopyWith<$Res> {
  factory $LoaderEventCopyWith(
    LoaderEvent value,
    $Res Function(LoaderEvent) then,
  ) = _$LoaderEventCopyWithImpl<$Res, LoaderEvent>;
}

/// @nodoc
class _$LoaderEventCopyWithImpl<$Res, $Val extends LoaderEvent>
    implements $LoaderEventCopyWith<$Res> {
  _$LoaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoaderEvent
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
    extends _$LoaderEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LoaderEvent.started()';
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
  TResult when<TResult extends Object?>({required TResult Function() started}) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({TResult? Function()? started}) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoaderEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$LoaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLogged) isLogged,
    required TResult Function() noVerifiedEmail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLogged)? isLogged,
    TResult? Function()? noVerifiedEmail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLogged)? isLogged,
    TResult Function()? noVerifiedEmail,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoAuth value) isLogged,
    required TResult Function(_NoVerifiedEmail value) noVerifiedEmail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoAuth value)? isLogged,
    TResult? Function(_NoVerifiedEmail value)? noVerifiedEmail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoAuth value)? isLogged,
    TResult Function(_NoVerifiedEmail value)? noVerifiedEmail,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoaderStateCopyWith<$Res> {
  factory $LoaderStateCopyWith(
    LoaderState value,
    $Res Function(LoaderState) then,
  ) = _$LoaderStateCopyWithImpl<$Res, LoaderState>;
}

/// @nodoc
class _$LoaderStateCopyWithImpl<$Res, $Val extends LoaderState>
    implements $LoaderStateCopyWith<$Res> {
  _$LoaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoaderState
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
    extends _$LoaderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoaderState.initial()';
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
    required TResult Function(bool isLogged) isLogged,
    required TResult Function() noVerifiedEmail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLogged)? isLogged,
    TResult? Function()? noVerifiedEmail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLogged)? isLogged,
    TResult Function()? noVerifiedEmail,
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
    required TResult Function(_NoAuth value) isLogged,
    required TResult Function(_NoVerifiedEmail value) noVerifiedEmail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoAuth value)? isLogged,
    TResult? Function(_NoVerifiedEmail value)? noVerifiedEmail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoAuth value)? isLogged,
    TResult Function(_NoVerifiedEmail value)? noVerifiedEmail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoaderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$NoAuthImplCopyWith<$Res> {
  factory _$$NoAuthImplCopyWith(
    _$NoAuthImpl value,
    $Res Function(_$NoAuthImpl) then,
  ) = __$$NoAuthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLogged});
}

/// @nodoc
class __$$NoAuthImplCopyWithImpl<$Res>
    extends _$LoaderStateCopyWithImpl<$Res, _$NoAuthImpl>
    implements _$$NoAuthImplCopyWith<$Res> {
  __$$NoAuthImplCopyWithImpl(
    _$NoAuthImpl _value,
    $Res Function(_$NoAuthImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLogged = null}) {
    return _then(
      _$NoAuthImpl(
        null == isLogged
            ? _value.isLogged
            : isLogged // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$NoAuthImpl implements _NoAuth {
  const _$NoAuthImpl(this.isLogged);

  @override
  final bool isLogged;

  @override
  String toString() {
    return 'LoaderState.isLogged(isLogged: $isLogged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoAuthImpl &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogged);

  /// Create a copy of LoaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoAuthImplCopyWith<_$NoAuthImpl> get copyWith =>
      __$$NoAuthImplCopyWithImpl<_$NoAuthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLogged) isLogged,
    required TResult Function() noVerifiedEmail,
  }) {
    return isLogged(this.isLogged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLogged)? isLogged,
    TResult? Function()? noVerifiedEmail,
  }) {
    return isLogged?.call(this.isLogged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLogged)? isLogged,
    TResult Function()? noVerifiedEmail,
    required TResult orElse(),
  }) {
    if (isLogged != null) {
      return isLogged(this.isLogged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoAuth value) isLogged,
    required TResult Function(_NoVerifiedEmail value) noVerifiedEmail,
  }) {
    return isLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoAuth value)? isLogged,
    TResult? Function(_NoVerifiedEmail value)? noVerifiedEmail,
  }) {
    return isLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoAuth value)? isLogged,
    TResult Function(_NoVerifiedEmail value)? noVerifiedEmail,
    required TResult orElse(),
  }) {
    if (isLogged != null) {
      return isLogged(this);
    }
    return orElse();
  }
}

abstract class _NoAuth implements LoaderState {
  const factory _NoAuth(final bool isLogged) = _$NoAuthImpl;

  bool get isLogged;

  /// Create a copy of LoaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoAuthImplCopyWith<_$NoAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoVerifiedEmailImplCopyWith<$Res> {
  factory _$$NoVerifiedEmailImplCopyWith(
    _$NoVerifiedEmailImpl value,
    $Res Function(_$NoVerifiedEmailImpl) then,
  ) = __$$NoVerifiedEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoVerifiedEmailImplCopyWithImpl<$Res>
    extends _$LoaderStateCopyWithImpl<$Res, _$NoVerifiedEmailImpl>
    implements _$$NoVerifiedEmailImplCopyWith<$Res> {
  __$$NoVerifiedEmailImplCopyWithImpl(
    _$NoVerifiedEmailImpl _value,
    $Res Function(_$NoVerifiedEmailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoVerifiedEmailImpl implements _NoVerifiedEmail {
  const _$NoVerifiedEmailImpl();

  @override
  String toString() {
    return 'LoaderState.noVerifiedEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoVerifiedEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLogged) isLogged,
    required TResult Function() noVerifiedEmail,
  }) {
    return noVerifiedEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLogged)? isLogged,
    TResult? Function()? noVerifiedEmail,
  }) {
    return noVerifiedEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLogged)? isLogged,
    TResult Function()? noVerifiedEmail,
    required TResult orElse(),
  }) {
    if (noVerifiedEmail != null) {
      return noVerifiedEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoAuth value) isLogged,
    required TResult Function(_NoVerifiedEmail value) noVerifiedEmail,
  }) {
    return noVerifiedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NoAuth value)? isLogged,
    TResult? Function(_NoVerifiedEmail value)? noVerifiedEmail,
  }) {
    return noVerifiedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoAuth value)? isLogged,
    TResult Function(_NoVerifiedEmail value)? noVerifiedEmail,
    required TResult orElse(),
  }) {
    if (noVerifiedEmail != null) {
      return noVerifiedEmail(this);
    }
    return orElse();
  }
}

abstract class _NoVerifiedEmail implements LoaderState {
  const factory _NoVerifiedEmail() = _$NoVerifiedEmailImpl;
}
