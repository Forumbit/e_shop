// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartProductModel _$$_CartProductModelFromJson(Map<String, dynamic> json) =>
    _$_CartProductModel(
      docId: json['docId'] as String?,
      id: json['id'] as int,
      price: json['price'] as int,
      stock: json['stock'] as int,
      quantity: json['quantity'] as int,
      thumbnail: json['thumbnail'] as String,
      title: json['title'] as String,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_CartProductModelToJson(_$_CartProductModel instance) =>
    <String, dynamic>{
      'docId': instance.docId,
      'id': instance.id,
      'price': instance.price,
      'stock': instance.stock,
      'quantity': instance.quantity,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'total': instance.total,
    };
