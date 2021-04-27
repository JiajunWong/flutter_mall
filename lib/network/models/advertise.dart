import 'package:json_annotation/json_annotation.dart';

part 'advertise.g.dart';

@JsonSerializable()
class Advertise {
  int id;
  String name;
  int type;
  String pic;
  int sort;

  Advertise(this.id, this.name, this.type, this.pic, this.sort);

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Advertise.fromJson(Map<String, dynamic> json) => _$AdvertiseFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$AdvertiseToJson(this);

  @override
  String toString() {
    return '{ ${this.id}, ${this.name} }';
  }
}
