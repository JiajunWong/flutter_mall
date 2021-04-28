import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mall/network/models/product.dart';

class ProductGridList extends StatelessWidget {
  final String _title;
  final List<Product> _products;

  ProductGridList(this._title, this._products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text(_title), Text('See more')],
        ),
        Column(
          children:
              _products.map((product) => ProductGridItem(product)).toList(),
        )
      ],
    );
  }
}

class ProductGridItem extends StatelessWidget {
  final Product _product;

  ProductGridItem(this._product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.4,
      child: Column(
        children: [
          Image.network(
            _product.pic,
            height: 100,
          ),
          Expanded(child: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.topLeft,
              child: Expanded(
                child: Text(
                    _product.name,
                  style: Theme.of(context).textTheme.body1,
                ),
              ))),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: Text('Price: \$${_product.price}', style: Theme.of(context).textTheme.body2)),
                Text('Saled: ${_product.sale}', style: Theme.of(context).textTheme.body2)
              ],
            ),
          )
        ],
      ),
    );
  }
}
