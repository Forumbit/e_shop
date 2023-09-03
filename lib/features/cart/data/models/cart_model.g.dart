// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      docId: json['docId'] as String?,
      uid: json['uid'] as String,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => CartProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'docId': instance.docId,
      'uid': instance.uid,
      'products': instance.products,
    };
