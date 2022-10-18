import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/models/productResponse.dart';
import 'component/_row_price_rating.dart';
import 'component/_build_app_bar.dart';

import '../../constant.dart';
import '../../models/Product.dart';
import 'component/_build_cart_btn.dart';
import 'component/_image_view.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({ Key? key,  this.product}) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: detailAppBar(product),
      body: Container(color: Colors.white,
        child: Column(
          children: [
            showImageView(context, product),
            SizedBox(height: kSpace),
            Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildRowPriceRating(product),
                    SizedBox(height: kSpace),
                    Text(
                      product!.description,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                      maxLines: 5,
                    ),
                    SizedBox(height: 50),
                    Center(child: btnAddToCart(context, product)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
