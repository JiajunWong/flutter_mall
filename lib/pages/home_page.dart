import 'package:flutter/material.dart';
import 'package:flutter_mall/components/advertise_component.dart';
import 'package:flutter_mall/components/product_grid_list_component.dart';
import 'package:flutter_mall/network/api.dart';
import 'package:flutter_mall/network/models/home_content_response.dart';
import 'package:flutter_mall/network/models/product.dart';
import 'package:flutter_mall/pages/product_detail_page.dart';

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

  void _handleProductClicked(Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return ProductDetailPage(product);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _homeContentData == null? Center(child: Text('Loading'),) :
      CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
            [
                  Container(
                    height: 200,
                    child: AdvertiseBanner(
                      advertises: _homeContentData.advertiseList,
                    ),
                  ),
            ]
          )),
          SliverPersistentHeader(delegate: _HomePageProductHeaderDelegate('What\'s new')),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 240,
            ),
            delegate: SliverChildListDelegate(
                _homeContentData.newProductList.map((product) => ProductGridItem(product, _handleProductClicked)).toList()
            ),
          ),
          SliverPersistentHeader(delegate: _HomePageProductHeaderDelegate('What\'s hot')),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 240,
            ),
            delegate: SliverChildListDelegate(
                _homeContentData.hotProductList.map((product) => ProductGridItem(product, _handleProductClicked)).toList()
            ),
          )
        ],
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

class _HomePageProductHeaderDelegate extends SliverPersistentHeaderDelegate{
  final String _title;

  _HomePageProductHeaderDelegate(this._title);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
   return Container(
     padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Expanded(child: Text(
           _title,
           style: Theme.of(context).textTheme.headline6,
         )),
         TextButton(
           onPressed: () {},
           child: Text('See more'),
         )
       ],
     ),
   );
  }

  @override
  double get maxExtent => 56;

  @override
  double get minExtent => 56;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}