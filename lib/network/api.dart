import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_mall/network/models/home_content_response.dart';

class MallApis {
  Future<HomeContentData> getHomeContent(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context).loadString("data/home_content.json");
    Map<String, dynamic> homeContentMap = jsonDecode(data);
    var homeContentResponse = HomeContentResponse.fromJson(homeContentMap);
    return homeContentResponse.data;
  }
}
