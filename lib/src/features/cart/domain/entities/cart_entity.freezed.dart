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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CartEntity {
  String? get docId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  List<CartProductEntity>? get products => throw _privateConstructorUsedError;

  /// Create a copy of CartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartEntityCopyWith<CartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEntityCopyWith<$Res> {
  factory $CartEntityCopyWith(
    CartEntity value,
    $Res Function(CartEntity) then,
  ) = _$CartEntityCopyWithImpl<$Res, CartEntity>;
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

  /// Create a copy of CartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = freezed,
    Object? uid = null,
    Object? products = freezed,
  }) {
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CartEntityImplCopyWith<$Res>
    implements $CartEntityCopyWith<$Res> {
  factory _$$CartEntityImplCopyWith(
    _$CartEntityImpl value,
    $Res Function(_$CartEntityImpl) then,
  ) = __$$CartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? docId, String uid, List<CartProductEntity>? products});
}

/// @nodoc
class __$$CartEntityImplCopyWithImpl<$Res>
    extends _$CartEntityCopyWithImpl<$Res, _$CartEntityImpl>
    implements _$$CartEntityImplCopyWith<$Res> {
  __$$CartEntityImplCopyWithImpl(
    _$CartEntityImpl _value,
    $Res Function(_$CartEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = freezed,
    Object? uid = null,
    Object? products = freezed,
  }) {
    return _then(
      _$CartEntityImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$CartEntityImpl implements _CartEntity {
  _$CartEntityImpl({
    this.docId,
    required this.uid,
    final List<CartProductEntity>? products,
  }) : _products = products;

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartEntityImpl &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    docId,
    uid,
    const DeepCollectionEquality().hash(_products),
  );

  /// Create a copy of CartEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartEntityImplCopyWith<_$CartEntityImpl> get copyWith =>
      __$$CartEntityImplCopyWithImpl<_$CartEntityImpl>(this, _$identity);
}

abstract class _CartEntity implements CartEntity {
  factory _CartEntity({
    final String? docId,
    required final String uid,
    final List<CartProductEntity>? products,
  }) = _$CartEntityImpl;

  @override
  String? get docId;
  @override
  String get uid;
  @override
  List<CartProductEntity>? get products;

  /// Create a copy of CartEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartEntityImplCopyWith<_$CartEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
