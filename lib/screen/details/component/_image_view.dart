import 'package:flutter/material.dart';

Container showImageView(BuildContext context, product) {
  var screenSize = MediaQuery.of(context).size;
  var screenHeight = (screenSize.height);
  return Container(
    // height: screenHeight * 30,
    padding: EdgeInsets.all(5),
    color: Colors.white24,
    child: Image.asset(
      product.image,scale: 2,
      // alignment: Alignment.centerRight,

    ),
  );
}
