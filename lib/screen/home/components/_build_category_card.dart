import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/models/productResponse.dart';
import '../../../components/_star_rating.dart' show showStarRating;
import '../../../models/Product.dart';

// buildCard(List<ProductResponse>? product) {
//   return
//     Padding(
//     padding: EdgeInsets.all(2),
//     child: Card(
//       elevation: 2,
//       child: Container(
//         height: 150,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(18),
//         ),
//         child: GridTile(
//           header: Padding(
//             padding: EdgeInsets.all(10),
//             child: imageIcon(product[]),
//           ),
//           footer: _buildPriceRating(product),
//           child: Container(),
//         ),
//       ),
//     ),
//   );
// }


Text description(Product product) {
  return Text(
    product.description,
    maxLines: 2,
  );
}

Row titlePrice(Product products) {
  return Row(
    children: [
      Text(products.title!,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
      Spacer(),
      Text(
        '\$ ${products.price!}',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      )
    ],
  );
}

Image imageIcon(String? product) {
  return Image.asset(
    product!,
    fit: BoxFit.cover,
    height: 90,
    width: 90,
  );
}
