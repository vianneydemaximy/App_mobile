import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:formation_flutter/network/product_response.dart';
import 'package:formation_flutter/model/product.dart';

class ProductNotifier extends ChangeNotifier {
  Product? _product;
  Product? get product => _product;

  ProductNotifier() {
    loadProduct();
  }

  Future<void> loadProduct() async {
    final dio = Dio();

    final response = await dio.get(
      'https://api.formation-flutter.fr/v2/getProduct',
      queryParameters: {
        'barcode': '5000159484695',
      },
    );

    final Map<String, dynamic> json =
      response.data as Map<String, dynamic>;

    final ProductResponse productResponse =
        ProductResponse.fromJSON(json);

    _product = _convertToProduct(productResponse.product);

    notifyListeners();
  }

  Product _convertToProduct(ProductData? data) {
    if (data == null) {
      throw Exception('No product data');
    }

    return Product(
      barcode: data.barcode!,
      name: data.name,
      picture: data.picture,
      quantity: data.quantity,
      brands: data.brands,
    );
  }
}
