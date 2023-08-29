// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parameter) started,
    required TResult Function(String? query, int page) onGetProducts,
    required TResult Function(String query) onSearchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parameter)? started,
    TResult? Function(String? query, int page)? onGetProducts,
    TResult? Function(String query)? onSearchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parameter)? started,
    TResult Function(String? query, int page)? onGetProducts,
    TResult Function(String query)? onSearchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnGetProducts value) onGetProducts,
    required TResult Function(_OnSearchProducts value) onSearchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnGetProducts value)? onGetProducts,
    TResult? Function(_OnSearchProducts value)? onSearchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnGetProducts value)? onGetProducts,
    TResult Function(_OnSearchProducts value)? onSearchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListEventCopyWith<$Res> {
  factory $ProductListEventCopyWith(
          ProductListEvent value, $Res Function(ProductListEvent) then) =
      _$ProductListEventCopyWithImpl<$Res, ProductListEvent>;
}

/// @nodoc
class _$ProductListEventCopyWithImpl<$Res, $Val extends ProductListEvent>
    implements $ProductListEventCopyWith<$Res> {
  _$ProductListEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String? parameter});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameter = freezed,
  }) {
    return _then(_$_Started(
      parameter: freezed == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({this.parameter = null});

  @override
  @JsonKey()
  final String? parameter;

  @override
  String toString() {
    return 'ProductListEvent.started(parameter: $parameter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.parameter, parameter) ||
                other.parameter == parameter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parameter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parameter) started,
    required TResult Function(String? query, int page) onGetProducts,
    required TResult Function(String query) onSearchProducts,
  }) {
    return started(parameter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parameter)? started,
    TResult? Function(String? query, int page)? onGetProducts,
    TResult? Function(String query)? onSearchProducts,
  }) {
    return started?.call(parameter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parameter)? started,
    TResult Function(String? query, int page)? onGetProducts,
    TResult Function(String query)? onSearchProducts,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(parameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnGetProducts value) onGetProducts,
    required TResult Function(_OnSearchProducts value) onSearchProducts,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnGetProducts value)? onGetProducts,
    TResult? Function(_OnSearchProducts value)? onSearchProducts,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnGetProducts value)? onGetProducts,
    TResult Function(_OnSearchProducts value)? onSearchProducts,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductListEvent {
  const factory _Started({final String? parameter}) = _$_Started;

  String? get parameter;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnGetProductsCopyWith<$Res> {
  factory _$$_OnGetProductsCopyWith(
          _$_OnGetProducts value, $Res Function(_$_OnGetProducts) then) =
      __$$_OnGetProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query, int page});
}

/// @nodoc
class __$$_OnGetProductsCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$_OnGetProducts>
    implements _$$_OnGetProductsCopyWith<$Res> {
  __$$_OnGetProductsCopyWithImpl(
      _$_OnGetProducts _value, $Res Function(_$_OnGetProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? page = null,
  }) {
    return _then(_$_OnGetProducts(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnGetProducts implements _OnGetProducts {
  const _$_OnGetProducts({this.query = null, this.page = 0});

  @override
  @JsonKey()
  final String? query;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'ProductListEvent.onGetProducts(query: $query, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnGetProducts &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnGetProductsCopyWith<_$_OnGetProducts> get copyWith =>
      __$$_OnGetProductsCopyWithImpl<_$_OnGetProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parameter) started,
    required TResult Function(String? query, int page) onGetProducts,
    required TResult Function(String query) onSearchProducts,
  }) {
    return onGetProducts(query, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parameter)? started,
    TResult? Function(String? query, int page)? onGetProducts,
    TResult? Function(String query)? onSearchProducts,
  }) {
    return onGetProducts?.call(query, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parameter)? started,
    TResult Function(String? query, int page)? onGetProducts,
    TResult Function(String query)? onSearchProducts,
    required TResult orElse(),
  }) {
    if (onGetProducts != null) {
      return onGetProducts(query, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnGetProducts value) onGetProducts,
    required TResult Function(_OnSearchProducts value) onSearchProducts,
  }) {
    return onGetProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnGetProducts value)? onGetProducts,
    TResult? Function(_OnSearchProducts value)? onSearchProducts,
  }) {
    return onGetProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnGetProducts value)? onGetProducts,
    TResult Function(_OnSearchProducts value)? onSearchProducts,
    required TResult orElse(),
  }) {
    if (onGetProducts != null) {
      return onGetProducts(this);
    }
    return orElse();
  }
}

abstract class _OnGetProducts implements ProductListEvent {
  const factory _OnGetProducts({final String? query, final int page}) =
      _$_OnGetProducts;

  String? get query;
  int get page;
  @JsonKey(ignore: true)
  _$$_OnGetProductsCopyWith<_$_OnGetProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnSearchProductsCopyWith<$Res> {
  factory _$$_OnSearchProductsCopyWith(
          _$_OnSearchProducts value, $Res Function(_$_OnSearchProducts) then) =
      __$$_OnSearchProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_OnSearchProductsCopyWithImpl<$Res>
    extends _$ProductListEventCopyWithImpl<$Res, _$_OnSearchProducts>
    implements _$$_OnSearchProductsCopyWith<$Res> {
  __$$_OnSearchProductsCopyWithImpl(
      _$_OnSearchProducts _value, $Res Function(_$_OnSearchProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_OnSearchProducts(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnSearchProducts implements _OnSearchProducts {
  const _$_OnSearchProducts(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProductListEvent.onSearchProducts(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSearchProducts &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnSearchProductsCopyWith<_$_OnSearchProducts> get copyWith =>
      __$$_OnSearchProductsCopyWithImpl<_$_OnSearchProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parameter) started,
    required TResult Function(String? query, int page) onGetProducts,
    required TResult Function(String query) onSearchProducts,
  }) {
    return onSearchProducts(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parameter)? started,
    TResult? Function(String? query, int page)? onGetProducts,
    TResult? Function(String query)? onSearchProducts,
  }) {
    return onSearchProducts?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parameter)? started,
    TResult Function(String? query, int page)? onGetProducts,
    TResult Function(String query)? onSearchProducts,
    required TResult orElse(),
  }) {
    if (onSearchProducts != null) {
      return onSearchProducts(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnGetProducts value) onGetProducts,
    required TResult Function(_OnSearchProducts value) onSearchProducts,
  }) {
    return onSearchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnGetProducts value)? onGetProducts,
    TResult? Function(_OnSearchProducts value)? onSearchProducts,
  }) {
    return onSearchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnGetProducts value)? onGetProducts,
    TResult Function(_OnSearchProducts value)? onSearchProducts,
    required TResult orElse(),
  }) {
    if (onSearchProducts != null) {
      return onSearchProducts(this);
    }
    return orElse();
  }
}

abstract class _OnSearchProducts implements ProductListEvent {
  const factory _OnSearchProducts(final String query) = _$_OnSearchProducts;

  String get query;
  @JsonKey(ignore: true)
  _$$_OnSearchProductsCopyWith<_$_OnSearchProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ProductListEntity productList, bool areProductsEnded)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductListEntity productList, bool areProductsEnded)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductListEntity productList, bool areProductsEnded)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListStateCopyWith<$Res> {
  factory $ProductListStateCopyWith(
          ProductListState value, $Res Function(ProductListState) then) =
      _$ProductListStateCopyWithImpl<$Res, ProductListState>;
}

/// @nodoc
class _$ProductListStateCopyWithImpl<$Res, $Val extends ProductListState>
    implements $ProductListStateCopyWith<$Res> {
  _$ProductListStateCopyWithImpl(this._value, this._then);

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
    extends _$ProductListStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductListState.initial()';
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
    required TResult Function(
            ProductListEntity productList, bool areProductsEnded)
        loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductListEntity productList, bool areProductsEnded)?
        loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductListEntity productList, bool areProductsEnded)?
        loaded,
    TResult Function()? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductListState {
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
    extends _$ProductListStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProductListState.loading()';
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
    required TResult Function(
            ProductListEntity productList, bool areProductsEnded)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductListEntity productList, bool areProductsEnded)?
        loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductListEntity productList, bool areProductsEnded)?
        loaded,
    TResult Function()? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProductListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductListEntity productList, bool areProductsEnded});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
    Object? areProductsEnded = null,
  }) {
    return _then(_$_Loaded(
      null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as ProductListEntity,
      null == areProductsEnded
          ? _value.areProductsEnded
          : areProductsEnded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.productList, this.areProductsEnded);

  @override
  final ProductListEntity productList;
  @override
  final bool areProductsEnded;

  @override
  String toString() {
    return 'ProductListState.loaded(productList: $productList, areProductsEnded: $areProductsEnded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.productList, productList) ||
                other.productList == productList) &&
            (identical(other.areProductsEnded, areProductsEnded) ||
                other.areProductsEnded == areProductsEnded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productList, areProductsEnded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ProductListEntity productList, bool areProductsEnded)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(productList, areProductsEnded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductListEntity productList, bool areProductsEnded)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(productList, areProductsEnded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductListEntity productList, bool areProductsEnded)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(productList, areProductsEnded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ProductListState {
  const factory _Loaded(
          final ProductListEntity productList, final bool areProductsEnded) =
      _$_Loaded;

  ProductListEntity get productList;
  bool get areProductsEnded;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'ProductListState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ProductListEntity productList, bool areProductsEnded)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductListEntity productList, bool areProductsEnded)?
        loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductListEntity productList, bool areProductsEnded)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProductListState {
  const factory _Error() = _$_Error;
}
