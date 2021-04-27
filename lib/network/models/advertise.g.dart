// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Advertise _$AdvertiseFromJson(Map<String, dynamic> json) {
  return Advertise(
    json['id'] as int,
    json['name'] as String,
    json['type'] as int,
    json['pic'] as String,
    json['sort'] as int,
  );
}

Map<String, dynamic> _$AdvertiseToJson(Advertise instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'pic': instance.pic,
      'sort': instance.sort,
    };
