// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_content_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeContentResponse _$HomeContentResponseFromJson(Map<String, dynamic> json) {
  return HomeContentResponse(
    json['code'] as int,
    json['message'] as String,
    json['data'] == null
        ? null
        : HomeContentData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HomeContentResponseToJson(
        HomeContentResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

HomeContentData _$HomeContentDataFromJson(Map<String, dynamic> json) {
  return HomeContentData(
    (json['advertiseList'] as List)
        ?.map((e) =>
            e == null ? null : Advertise.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['newProductList'] as List)
        ?.map((e) =>
            e == null ? null : Product.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HomeContentDataToJson(HomeContentData instance) =>
    <String, dynamic>{
      'advertiseList':
          instance.advertiseList?.map((e) => e?.toJson())?.toList(),
      'newProductList':
          instance.newProductList?.map((e) => e?.toJson())?.toList(),
    };
