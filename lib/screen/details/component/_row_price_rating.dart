import 'package:flutter/material.dart';

import '../../../components/_star_rating.dart';

Row buildRowPriceRating(product) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Price: \$${product.price}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
      showStarRating(3.0)
    ],
  );
}
