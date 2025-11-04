// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductListModel _$ProductListModelFromJson(Map<String, dynamic> json) {
  return _ProductListModel.fromJson(json);
}

/// @nodoc
mixin _$ProductListModel {
  List<ProductModel> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this ProductListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListModelCopyWith<ProductListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListModelCopyWith<$Res> {
  factory $ProductListModelCopyWith(
    ProductListModel value,
    $Res Function(ProductListModel) then,
  ) = _$ProductListModelCopyWithImpl<$Res, ProductListModel>;
  @useResult
  $Res call({List<ProductModel> products, int total, int skip, int limit});
}

/// @nodoc
class _$ProductListModelCopyWithImpl<$Res, $Val extends ProductListModel>
    implements $ProductListModelCopyWith<$Res> {
  _$ProductListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
            products: null == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                      as List<ProductModel>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            skip: null == skip
                ? _value.skip
                : skip // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductListModelImplCopyWith<$Res>
    implements $ProductListModelCopyWith<$Res> {
  factory _$$ProductListModelImplCopyWith(
    _$ProductListModelImpl value,
    $Res Function(_$ProductListModelImpl) then,
  ) = __$$ProductListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel> products, int total, int skip, int limit});
}

/// @nodoc
class __$$ProductListModelImplCopyWithImpl<$Res>
    extends _$ProductListModelCopyWithImpl<$Res, _$ProductListModelImpl>
    implements _$$ProductListModelImplCopyWith<$Res> {
  __$$ProductListModelImplCopyWithImpl(
    _$ProductListModelImpl _value,
    $Res Function(_$ProductListModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(
      _$ProductListModelImpl(
        products: null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<ProductModel>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        skip: null == skip
            ? _value.skip
            : skip // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListModelImpl
    with DiagnosticableTreeMixin
    implements _ProductListModel {
  _$ProductListModelImpl({
    required final List<ProductModel> products,
    required this.total,
    required this.skip,
    required this.limit,
  }) : _products = products;

  factory _$ProductListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListModelImplFromJson(json);

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int total;
  @override
  final int skip;
  @override
  final int limit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductListModel(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductListModel'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('skip', skip))
      ..add(DiagnosticsProperty('limit', limit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListModelImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_products),
    total,
    skip,
    limit,
  );

  /// Create a copy of ProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListModelImplCopyWith<_$ProductListModelImpl> get copyWith =>
      __$$ProductListModelImplCopyWithImpl<_$ProductListModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListModelImplToJson(this);
  }
}

abstract class _ProductListModel implements ProductListModel {
  factory _ProductListModel({
    required final List<ProductModel> products,
    required final int total,
    required final int skip,
    required final int limit,
  }) = _$ProductListModelImpl;

  factory _ProductListModel.fromJson(Map<String, dynamic> json) =
      _$ProductListModelImpl.fromJson;

  @override
  List<ProductModel> get products;
  @override
  int get total;
  @override
  int get skip;
  @override
  int get limit;

  /// Create a copy of ProductListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListModelImplCopyWith<_$ProductListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
