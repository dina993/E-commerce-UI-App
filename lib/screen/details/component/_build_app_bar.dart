import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/_close_activity.dart';

AppBar detailAppBar(product) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.grey[50],
    title: Text("My Cart",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: closeActivity(),
    centerTitle: true,
    actions: [
      Padding(
        padding: EdgeInsets.all(8),
        child: CircleAvatar(backgroundColor: Colors.red,
          child: Icon(
            Icons.shopping_cart,
            size: 23,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}
