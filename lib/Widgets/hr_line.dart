import 'package:flutter/material.dart';

Widget horizontalLine() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: 120,
        height: 1.0,
        color: Colors.cyan.withOpacity(.8),
      ),
    );
