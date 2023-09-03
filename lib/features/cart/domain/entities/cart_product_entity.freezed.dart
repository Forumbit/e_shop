// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartProductEntity {
  String? get docId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartProductEntityCopyWith<CartProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductEntityCopyWith<$Res> {
  factory $CartProductEntityCopyWith(
          CartProductEntity value, $Res Function(CartProductEntity) then) =
      _$CartProductEntityCopyWithImpl<$Res, CartProductEntity>;
  @useResult
  $Res call(
      {String? docId,
      int id,
      int price,
      int quantity,
      int stock,
      String thumbnail,
      String title,
      int total});
}

/// @nodoc
class _$CartProductEntityCopyWithImpl<$Res, $Val extends CartProductEntity>
    implements $CartProductEntityCopyWith<$Res> {
  _$CartProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = freezed,
    Object? id = null,
    Object? price = null,
    Object? quantity = null,
    Object? stock = null,
    Object? thumbnail = null,
    Object? title = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
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
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartProductEntityCopyWith<$Res>
    implements $CartProductEntityCopyWith<$Res> {
  factory _$$_CartProductEntityCopyWith(_$_CartProductEntity value,
          $Res Function(_$_CartProductEntity) then) =
      __$$_CartProductEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? docId,
      int id,
      int price,
      int quantity,
      int stock,
      String thumbnail,
      String title,
      int total});
}

/// @nodoc
class __$$_CartProductEntityCopyWithImpl<$Res>
    extends _$CartProductEntityCopyWithImpl<$Res, _$_CartProductEntity>
    implements _$$_CartProductEntityCopyWith<$Res> {
  __$$_CartProductEntityCopyWithImpl(
      _$_CartProductEntity _value, $Res Function(_$_CartProductEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = freezed,
    Object? id = null,
    Object? price = null,
    Object? quantity = null,
    Object? stock = null,
    Object? thumbnail = null,
    Object? title = null,
    Object? total = null,
  }) {
    return _then(_$_CartProductEntity(
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
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _$_CartProductEntity implements _CartProductEntity {
  _$_CartProductEntity(
      {required this.docId,
      required this.id,
      required this.price,
      required this.quantity,
      required this.stock,
      required this.thumbnail,
      required this.title,
      required this.total});

  @override
  final String? docId;
  @override
  final int id;
  @override
  final int price;
  @override
  final int quantity;
  @override
  final int stock;
  @override
  final String thumbnail;
  @override
  final String title;
  @override
  final int total;

  @override
  String toString() {
    return 'CartProductEntity(docId: $docId, id: $id, price: $price, quantity: $quantity, stock: $stock, thumbnail: $thumbnail, title: $title, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProductEntity &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, docId, id, price, quantity, stock, thumbnail, title, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartProductEntityCopyWith<_$_CartProductEntity> get copyWith =>
      __$$_CartProductEntityCopyWithImpl<_$_CartProductEntity>(
          this, _$identity);
}

abstract class _CartProductEntity implements CartProductEntity {
  factory _CartProductEntity(
      {required final String? docId,
      required final int id,
      required final int price,
      required final int quantity,
      required final int stock,
      required final String thumbnail,
      required final String title,
      required final int total}) = _$_CartProductEntity;

  @override
  String? get docId;
  @override
  int get id;
  @override
  int get price;
  @override
  int get quantity;
  @override
  int get stock;
  @override
  String get thumbnail;
  @override
  String get title;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_CartProductEntityCopyWith<_$_CartProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
