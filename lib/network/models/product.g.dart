// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    json['id'] as int,
    json['name'] as String,
    json['pic'] as String,
    json['price'] as int,
    json['subTitle'] as String,
    json['sale'] as int,
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pic': instance.pic,
      'price': instance.price,
      'subTitle': instance.subTitle,
      'sale': instance.sale,
    };
