import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/models/productResponse.dart';
import '../../../components/_star_rating.dart';
import '../../../controller/apiServices.dart';
import '../../../models/Product.dart';
import '../../details/detail_page.dart';
import 'package:get/get.dart';

import '_build_category_card.dart';
import '_build_popular_card.dart';

ListView category(productList) {
  return ListView.builder(
      padding: EdgeInsets.only(left: 0),
      itemCount: productList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () =>Get.to(ProductDetail()),
          child: buildPopularCard(productList[index]),
        );
      });
}

 mostPopularCategory(context,List<Product> products) {
   return GridView.count(crossAxisCount: 2,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () => Get.to(ProductDetail(product:products[index])),
          child:  Padding(
            padding: EdgeInsets.all(2),
            child: Card(
              elevation: 2,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: GridTile(
                  header: Padding(
                    padding: EdgeInsets.all(10),
                    child: imageIcon(products[index].image),
                  ),
                  footer: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         titlePrice(products[index]),
                        SizedBox(height: 8),
                        showStarRating(3.0)
                      ],
                    ),
                  ),
                  child: Container(),
                ),
              ),
            ),
          )
        );
      }),
    );}

