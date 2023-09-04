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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductModelCopyWith<CartProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductModelCopyWith<$Res> {
  factory $CartProductModelCopyWith(
          CartProductModel value, $Res Function(CartProductModel) then) =
      _$CartProductModelCopyWithImpl<$Res, CartProductModel>;
  @useResult
  $Res call(
      {String? docId,
      int id,
      int price,
      int stock,
      int quantity,
      String thumbnail,
      String title,
      int total});
}

/// @nodoc
class _$CartProductModelCopyWithImpl<$Res, $Val extends CartProductModel>
    implements $CartProductModelCopyWith<$Res> {
  _$CartProductModelCopyWithImpl(this._value, this._then);

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
    Object? stock = null,
    Object? quantity = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartProductModelCopyWith<$Res>
    implements $CartProductModelCopyWith<$Res> {
  factory _$$_CartProductModelCopyWith(
          _$_CartProductModel value, $Res Function(_$_CartProductModel) then) =
      __$$_CartProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? docId,
      int id,
      int price,
      int stock,
      int quantity,
      String thumbnail,
      String title,
      int total});
}

/// @nodoc
class __$$_CartProductModelCopyWithImpl<$Res>
    extends _$CartProductModelCopyWithImpl<$Res, _$_CartProductModel>
    implements _$$_CartProductModelCopyWith<$Res> {
  __$$_CartProductModelCopyWithImpl(
      _$_CartProductModel _value, $Res Function(_$_CartProductModel) _then)
      : super(_value, _then);

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
    return _then(_$_CartProductModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProductModel implements _CartProductModel {
  _$_CartProductModel(
      {required this.docId,
      required this.id,
      required this.price,
      required this.stock,
      required this.quantity,
      required this.thumbnail,
      required this.title,
      required this.total});

  factory _$_CartProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProductModel &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, docId, id, price, stock, quantity, thumbnail, title, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartProductModelCopyWith<_$_CartProductModel> get copyWith =>
      __$$_CartProductModelCopyWithImpl<_$_CartProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductModelToJson(
      this,
    );
  }
}

abstract class _CartProductModel implements CartProductModel {
  factory _CartProductModel(
      {required final String? docId,
      required final int id,
      required final int price,
      required final int stock,
      required final int quantity,
      required final String thumbnail,
      required final String title,
      required final int total}) = _$_CartProductModel;

  factory _CartProductModel.fromJson(Map<String, dynamic> json) =
      _$_CartProductModel.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$_CartProductModelCopyWith<_$_CartProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
