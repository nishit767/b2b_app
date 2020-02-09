import 'package:flutter/material.dart';

class Seller extends ChangeNotifier {
  String sellerName;
  double rating = 4.2;
  bool isVerified = true;
  String productCategory;
  CircleAvatar sellerAvatar = CircleAvatar(
    backgroundImage: NetworkImage('https://picsum.photos/150/150'),
    radius: 50,
  );

  Seller({this.rating, this.isVerified, this.sellerName});
}
