import 'package:flutter/material.dart';

//fira sans 'My Cart' etc headings
//quicksand product desc
//barlow login
//lato other

class AppStyle {
  static TextStyle loginPageStyle = TextStyle(
    fontFamily: 'Barlow',
    fontSize: 20,
  );
  static TextStyle loginPageHeadingStyle = TextStyle(
      fontFamily: 'Barlow',
      fontSize: 24,
      fontWeight: FontWeight.w500
  );
  static TextStyle headingStyle1 = TextStyle(
    fontFamily: 'Lato',
    fontSize: 22,
  );
  static TextStyle headingStyle2 = TextStyle(
    fontFamily: 'Fira Sans',
    fontSize: 24,
  );
  static TextStyle subtitleStyle1 = TextStyle(
      fontFamily: 'Quicksand',
      fontStyle: FontStyle.italic,
      fontSize: 18,
      fontWeight: FontWeight.w200
  );
  static TextStyle productHeading = TextStyle(
      fontFamily: 'Lato',
      fontSize: 20,
      fontWeight: FontWeight.w200
  );
  static TextStyle productSub = TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 14,
  );
}
