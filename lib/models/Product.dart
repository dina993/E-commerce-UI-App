import 'package:flutter/cupertino.dart';

class Product {
  Color? color;
  late String title;
  String image;
  var price;
  String ?tag;
  String description;
  String? size;
  String? count;
  String? info;

  Product(
      {
        this.color,
     required this.title,
     required this.image,
     required this.price,
      this.tag,
     required this.description,
      this.size,
      this.count,
      this.info});
}
