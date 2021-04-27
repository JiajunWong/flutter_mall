
import 'package:json_annotation/json_annotation.dart';

import 'advertise.dart';
part 'home_content_response.g.dart';

@JsonSerializable(explicitToJson: true)
class HomeContentResponse {
  int code;
  String message;
  HomeContentData data;

  HomeContentResponse(this.code, this.message, this.data);

  factory HomeContentResponse.fromJson(Map<String, dynamic> json) => _$HomeContentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeContentResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HomeContentData {
  List<Advertise> advertiseList;

  HomeContentData(this.advertiseList);

  factory HomeContentData.fromJson(Map<String, dynamic> json) => _$HomeContentDataFromJson(json);

  Map<String, dynamic> toJson() => _$HomeContentDataToJson(this);
}
