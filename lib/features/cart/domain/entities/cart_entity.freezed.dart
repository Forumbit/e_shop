// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEntity {
  String? get docId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  List<CartProductEntity>? get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartEntityCopyWith<CartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEntityCopyWith<$Res> {
  factory $CartEntityCopyWith(
          CartEntity value, $Res Function(CartEntity) then) =
      _$CartEntityCopyWithImpl<$Res, CartEntity>;
  @useResult
  $Res call({String? docId, String uid, List<CartProductEntity>? products});
}

/// @nodoc
class _$CartEntityCopyWithImpl<$Res, $Val extends CartEntity>
    implements $CartEntityCopyWith<$Res> {
  _$CartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = freezed,
    Object? uid = null,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      docId: freezed == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartEntityCopyWith<$Res>
    implements $CartEntityCopyWith<$Res> {
  factory _$$_CartEntityCopyWith(
          _$_CartEntity value, $Res Function(_$_CartEntity) then) =
      __$$_CartEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? docId, String uid, List<CartProductEntity>? products});
}

/// @nodoc
class __$$_CartEntityCopyWithImpl<$Res>
    extends _$CartEntityCopyWithImpl<$Res, _$_CartEntity>
    implements _$$_CartEntityCopyWith<$Res> {
  __$$_CartEntityCopyWithImpl(
      _$_CartEntity _value, $Res Function(_$_CartEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = freezed,
    Object? uid = null,
    Object? products = freezed,
  }) {
    return _then(_$_CartEntity(
      docId: freezed == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductEntity>?,
    ));
  }
}

/// @nodoc

class _$_CartEntity implements _CartEntity {
  _$_CartEntity(
      {required this.docId,
      required this.uid,
      required final List<CartProductEntity>? products})
      : _products = products;

  @override
  final String? docId;
  @override
  final String uid;
  final List<CartProductEntity>? _products;
  @override
  List<CartProductEntity>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartEntity(docId: $docId, uid: $uid, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartEntity &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, docId, uid, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartEntityCopyWith<_$_CartEntity> get copyWith =>
      __$$_CartEntityCopyWithImpl<_$_CartEntity>(this, _$identity);
}

abstract class _CartEntity implements CartEntity {
  factory _CartEntity(
      {required final String? docId,
      required final String uid,
      required final List<CartProductEntity>? products}) = _$_CartEntity;

  @override
  String? get docId;
  @override
  String get uid;
  @override
  List<CartProductEntity>? get products;
  @override
  @JsonKey(ignore: true)
  _$$_CartEntityCopyWith<_$_CartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
