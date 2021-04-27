import 'package:flutter/material.dart';
import 'package:flutter_mall/network/api.dart';
import 'package:flutter_mall/network/models/home_content_response.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeContentData _homeContentData;

  @override
  void initState() {
    super.initState();
    _loadContent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(_homeContentData?.advertiseList?.length != null
            ? _homeContentData?.advertiseList?.length.toString()
            : "Empty"),
      ),
    );
  }

  Future<void> _loadContent() async {
    var data = await MallApis().getHomeContent(context);
    setState(() {
      _homeContentData = data;
    });
  }
}
