// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CartProductModel _$CartProductModelFromJson(Map<String, dynamic> json) {
  return _CartProductModel.fromJson(json);
}

/// @nodoc
mixin _$CartProductModel {
  String? get docId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this CartProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductModelCopyWith<CartProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductModelCopyWith<$Res> {
  factory $CartProductModelCopyWith(
    CartProductModel value,
    $Res Function(CartProductModel) then,
  ) = _$CartProductModelCopyWithImpl<$Res, CartProductModel>;
  @useResult
  $Res call({
    String? docId,
    int id,
    int price,
    int stock,
    int quantity,
    String thumbnail,
    String title,
    int total,
  });
}

/// @nodoc
class _$CartProductModelCopyWithImpl<$Res, $Val extends CartProductModel>
    implements $CartProductModelCopyWith<$Res> {
  _$CartProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = freezed,
    Object? id = null,
    Object? price = null,
    Object? stock = null,
    Object? quantity = null,
    Object? thumbnail = null,
    Object? title = null,
    Object? total = null,
  }) {
    return _then(
      _value.copyWith(
            docId: freezed == docId
                ? _value.docId
                : docId // ignore: cast_nullable_to_non_nullable
                      as String?,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as int,
            stock: null == stock
                ? _value.stock
                : stock // ignore: cast_nullable_to_non_nullable
                      as int,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            thumbnail: null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CartProductModelImplCopyWith<$Res>
    implements $CartProductModelCopyWith<$Res> {
  factory _$$CartProductModelImplCopyWith(
    _$CartProductModelImpl value,
    $Res Function(_$CartProductModelImpl) then,
  ) = __$$CartProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? docId,
    int id,
    int price,
    int stock,
    int quantity,
    String thumbnail,
    String title,
    int total,
  });
}

/// @nodoc
class __$$CartProductModelImplCopyWithImpl<$Res>
    extends _$CartProductModelCopyWithImpl<$Res, _$CartProductModelImpl>
    implements _$$CartProductModelImplCopyWith<$Res> {
  __$$CartProductModelImplCopyWithImpl(
    _$CartProductModelImpl _value,
    $Res Function(_$CartProductModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = freezed,
    Object? id = null,
    Object? price = null,
    Object? stock = null,
    Object? quantity = null,
    Object? thumbnail = null,
    Object? title = null,
    Object? total = null,
  }) {
    return _then(
      _$CartProductModelImpl(
        docId: freezed == docId
            ? _value.docId
            : docId // ignore: cast_nullable_to_non_nullable
                  as String?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as int,
        stock: null == stock
            ? _value.stock
            : stock // ignore: cast_nullable_to_non_nullable
                  as int,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        thumbnail: null == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductModelImpl implements _CartProductModel {
  _$CartProductModelImpl({
    this.docId,
    required this.id,
    required this.price,
    required this.stock,
    required this.quantity,
    required this.thumbnail,
    required this.title,
    required this.total,
  });

  factory _$CartProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductModelImplFromJson(json);

  @override
  final String? docId;
  @override
  final int id;
  @override
  final int price;
  @override
  final int stock;
  @override
  final int quantity;
  @override
  final String thumbnail;
  @override
  final String title;
  @override
  final int total;

  @override
  String toString() {
    return 'CartProductModel(docId: $docId, id: $id, price: $price, stock: $stock, quantity: $quantity, thumbnail: $thumbnail, title: $title, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductModelImpl &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    docId,
    id,
    price,
    stock,
    quantity,
    thumbnail,
    title,
    total,
  );

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductModelImplCopyWith<_$CartProductModelImpl> get copyWith =>
      __$$CartProductModelImplCopyWithImpl<_$CartProductModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductModelImplToJson(this);
  }
}

abstract class _CartProductModel implements CartProductModel {
  factory _CartProductModel({
    final String? docId,
    required final int id,
    required final int price,
    required final int stock,
    required final int quantity,
    required final String thumbnail,
    required final String title,
    required final int total,
  }) = _$CartProductModelImpl;

  factory _CartProductModel.fromJson(Map<String, dynamic> json) =
      _$CartProductModelImpl.fromJson;

  @override
  String? get docId;
  @override
  int get id;
  @override
  int get price;
  @override
  int get stock;
  @override
  int get quantity;
  @override
  String get thumbnail;
  @override
  String get title;
  @override
  int get total;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductModelImplCopyWith<_$CartProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
