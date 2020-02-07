import 'package:flutter/material.dart';

Widget getCircularLogo(String url) {
  return Container(
      height: 40.0,
      width: 40.0,
      decoration: new BoxDecoration(
          image: new DecorationImage(
        image: new NetworkImage('$url'),
      )));
}
