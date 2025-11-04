// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductListEntity {
  List<ProductEntity> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of ProductListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListEntityCopyWith<ProductListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListEntityCopyWith<$Res> {
  factory $ProductListEntityCopyWith(
    ProductListEntity value,
    $Res Function(ProductListEntity) then,
  ) = _$ProductListEntityCopyWithImpl<$Res, ProductListEntity>;
  @useResult
  $Res call({List<ProductEntity> products, int total, int skip, int limit});
}

/// @nodoc
class _$ProductListEntityCopyWithImpl<$Res, $Val extends ProductListEntity>
    implements $ProductListEntityCopyWith<$Res> {
  _$ProductListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListEntity
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
                      as List<ProductEntity>,
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
abstract class _$$ProductListEntityImplCopyWith<$Res>
    implements $ProductListEntityCopyWith<$Res> {
  factory _$$ProductListEntityImplCopyWith(
    _$ProductListEntityImpl value,
    $Res Function(_$ProductListEntityImpl) then,
  ) = __$$ProductListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductEntity> products, int total, int skip, int limit});
}

/// @nodoc
class __$$ProductListEntityImplCopyWithImpl<$Res>
    extends _$ProductListEntityCopyWithImpl<$Res, _$ProductListEntityImpl>
    implements _$$ProductListEntityImplCopyWith<$Res> {
  __$$ProductListEntityImplCopyWithImpl(
    _$ProductListEntityImpl _value,
    $Res Function(_$ProductListEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductListEntity
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
      _$ProductListEntityImpl(
        products: null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<ProductEntity>,
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

class _$ProductListEntityImpl implements _ProductListEntity {
  _$ProductListEntityImpl({
    required final List<ProductEntity> products,
    required this.total,
    required this.skip,
    required this.limit,
  }) : _products = products;

  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
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
  String toString() {
    return 'ProductListEntity(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListEntityImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_products),
    total,
    skip,
    limit,
  );

  /// Create a copy of ProductListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListEntityImplCopyWith<_$ProductListEntityImpl> get copyWith =>
      __$$ProductListEntityImplCopyWithImpl<_$ProductListEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductListEntity implements ProductListEntity {
  factory _ProductListEntity({
    required final List<ProductEntity> products,
    required final int total,
    required final int skip,
    required final int limit,
  }) = _$ProductListEntityImpl;

  @override
  List<ProductEntity> get products;
  @override
  int get total;
  @override
  int get skip;
  @override
  int get limit;

  /// Create a copy of ProductListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListEntityImplCopyWith<_$ProductListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
