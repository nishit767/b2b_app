import 'package:flutter/material.dart';

class Seller extends ChangeNotifier {
  String sellerName;
  double rating;
  bool isVerified;
  String productCategory;
  CircleAvatar sellerAvatar = CircleAvatar(
    backgroundImage: NetworkImage('https://picsum.photos/150/150'),
    radius: 50,
  );
}
