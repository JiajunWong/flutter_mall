import 'package:flutter/material.dart';
import 'package:flutter_mall/components/advertise_component.dart';
import 'package:flutter_mall/components/product_grid_list_component.dart';
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
      body: _homeContentData == null? Center(child: Text('Loading'),) :
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: AdvertiseBanner(
                advertises: _homeContentData.advertiseList,
              ),
            ),
            ProductGridList('What\'s new', _homeContentData.newProductList)
          ],
        ),
      )
    );
  }

  Future<void> _loadContent() async {
    var data = await MallApis().getHomeContent(context);
    setState(() {
      _homeContentData = data;
    });
  }
}
