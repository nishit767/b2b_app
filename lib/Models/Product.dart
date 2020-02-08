import 'dart:math';

import 'package:flutter/material.dart';

import 'Seller.dart';

class Product extends ChangeNotifier {
  String category = 'Product Range';
  String description = 'Product Description';
  bool isFreeDelivery = true;
  Seller seller;
  int amountSold = 1500;
  double rating;
  double price;
  String imageURL = 'https://picsum.photos/200/100';

  Product(this.imageURL, this.amountSold, this.category, this.rating,
      this.price, {this.description, this.isFreeDelivery, this.seller});
}

class ProductStore extends ChangeNotifier {
  List<Product> products;
  List<String> categories = ['IT', 'Fashion', 'Luggage', 'Office'];

  ProductStore() {
    products = [];
    for (int i = 1; i <= 50; i++) {
      products.add(Product(
          'https://i.picsum.photos/id/$i/300/300.jpg',
          Random().nextInt(50) * 20,
          categories[Random().nextInt(3)],
          Random().nextDouble() * 5, Random().nextDouble() * 10000));
    }
  }


}