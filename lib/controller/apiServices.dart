

import 'package:dio/dio.dart';
import 'package:flutter_ecommerce_app/controller/apiConstants.dart';

import '../models/productResponse.dart';

class ApiServices {
  Dio dio = Dio();

  Future<List<ProductResponse>> getAllProducts() async {
    Response response = await dio.get(ApiConstants.baseUrl+ApiConstants.productEndPoint);
    List dataList = response.data;
    List<ProductResponse> products = dataList.map((element) {
      return ProductResponse.fromJson(element);
    }).toList();
    return products;
  }
  Future<List<String>> getAllCategories() async {
    Response response = await dio.get(ApiConstants.baseUrl+ApiConstants.categoryEndPoint);
    List dataList = response.data;
    List<String> categories = dataList.map((element) {
      return element.toString();
    }).toList();
    return categories;
  }
  Future<List<ProductResponse>> getCategoryProducts(String category) async {
    Response response = await dio.get(ApiConstants.getCategoryProduct+category);
    List dataList = response.data;
    List<ProductResponse> products = dataList.map((element) {
      return ProductResponse.fromJson(element);
    }).toList();
    return products;
  }
}