// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartProductModelImpl _$$CartProductModelImplFromJson(
  Map<String, dynamic> json,
) => _$CartProductModelImpl(
  docId: json['docId'] as String?,
  id: (json['id'] as num).toInt(),
  price: (json['price'] as num).toInt(),
  stock: (json['stock'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  thumbnail: json['thumbnail'] as String,
  title: json['title'] as String,
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$$CartProductModelImplToJson(
  _$CartProductModelImpl instance,
) => <String, dynamic>{
  'docId': instance.docId,
  'id': instance.id,
  'price': instance.price,
  'stock': instance.stock,
  'quantity': instance.quantity,
  'thumbnail': instance.thumbnail,
  'title': instance.title,
  'total': instance.total,
};
