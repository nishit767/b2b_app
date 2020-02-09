import 'dart:math';

import 'package:flutter/material.dart';

import 'Seller.dart';

class Product extends ChangeNotifier {
  String name = 'Product 1';
  String category = 'Product Range';
  String description = 'Product Description';
  bool isFreeDelivery = true;
  bool isFavourite = false;
  Seller seller;
  int amountSold = 1500;
  double rating;
  double price;
  String imageURL = 'https://picsum.photos/200/100';

  Product(this.imageURL,
      this.amountSold,
      this.category,
      this.rating,
      this.price, {
        this.name,
        this.description,
        this.isFreeDelivery,
        this.seller,
        this.isFavourite,
      });
}

class ProductStore extends ChangeNotifier {
  List<Product> products;
  List<Product> shoeProducts;
  List<String> categories = ['IT', 'Fashion', 'Luggage', 'Office'];
  int imageIndex;

  ProductStore() {
    products = [];
    for (int i = 1; i <= 50; i++) {
      products.add(Product(
          'https://i.picsum.photos/id/$i/300/300.jpg',
          Random().nextInt(50) * 20,
          categories[Random().nextInt(3)],
          Random().nextDouble() * 5,
          Random().nextDouble() * 10000));
    }
    //{this.description, this.isFreeDelivery, this.seller, this.isFavourite,this.shoeImageUrl});

    shoeProducts = [];
    for (int i = 0; i <= 49; i++) {
      imageIndex = i % 7 + 1;
      shoeProducts.add(Product(
          'images/shoes/image $imageIndex.png',
          Random().nextInt(50) * 20,
          'Fashion',
          Random().nextDouble() * 5,
          Random().nextDouble() * 100000,
          isFavourite: false,
          isFreeDelivery: Random().nextBool(),
          description: 'Nike Men\'s Flyknit Running Shoes',
          name: 'Nike $imageIndex',
          seller: Seller(rating: Random().nextDouble() * 5,
              isVerified: Random().nextBool())));
    }
  }
}
