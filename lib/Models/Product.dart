import 'dart:math';

import 'package:flutter/material.dart';

class Product extends ChangeNotifier {
  String category = 'Product Range';
  int amountSold = 1500;
  double rating;
  double price;
  String imageURL = 'https://picsum.photos/200/100';

  Product(this.imageURL, this.amountSold, this.category, this.rating,
      this.price);
}

class ProductStore extends ChangeNotifier {
  static List<Product> products;
  static List<String> categories = ['IT', 'clothes', 'luggage', 'office'];

  ProductStore() {
    products = [];
    for (int i = 1; i <= 50; i++) {
      products.add(Product(
          'http://placeimg.com/400/200/tech', Random().nextInt(50) * 20,
          categories[Random().nextInt(3)],
          Random().nextDouble() * 5, Random().nextDouble() * 10000));
    }
  }


}