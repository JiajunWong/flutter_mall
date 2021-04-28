
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable(explicitToJson: true)
class Product {
  int id;
  String name;
  String pic;
  int price;
  String subTitle;
  int sale;

  Product(this.id, this.name, this.pic, this.price, this.subTitle, this.sale);

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}