import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mall/network/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product _product;

  ProductDetailPage(this._product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(_product.name),
      ),
    );
  }
}
