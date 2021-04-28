import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mall/network/models/product.dart';

typedef ProductGridItemClickCallback(Product product);

class ProductGridItem extends StatelessWidget {
  final Product _product;
  final ProductGridItemClickCallback _clickCallback;

  ProductGridItem(this._product, this._clickCallback);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){_clickCallback(_product);},
      child: Card(
        elevation: 0.4,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 8),
              child: Image.network(
                _product.pic,
                height: 100,
              ),),
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
      ),
    );
  }
}
