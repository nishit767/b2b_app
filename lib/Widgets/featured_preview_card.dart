import 'package:b2b_app/Shared/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:b2b_app/Shared/random_color_gen.dart';
import 'dart:math';

class ProductReviewCard extends StatefulWidget {
  ProductReviewCard({
    Key key,
  }) : super(key: key);

  @override
  _ProductReviewCardState createState() => _ProductReviewCardState();
}

class _ProductReviewCardState extends State<ProductReviewCard> {
  var randomColor = ColorRand();

  @override
  Widget build(BuildContext context) {
    Color _bgColor =
        randomColor.gencolors[Random().nextInt(50)].withOpacity(0.5);
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          color: _bgColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 10,
              ),
              Text(
                'Featured Products',
                style: AppStyle.headingStyle1,
              ),
              Container(
                width: 100,
              ),
              RaisedButton(
                  color: Colors.black,
                  onPressed: null,
                  child: Text('View All',
                      style: TextStyle(
                        color: Colors.white,
                      )))
            ],
          ),
        ),
        Container(
          height: 400,
          color: _bgColor,
          child: GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              children: [
                for (int i = 1; i <= 4; i++)
                  Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Placeholder(
                          fallbackHeight: 140,
                          fallbackWidth: 100,
                        ),
                        Text('Product Range'),
                        Text('1500+ sold')
                      ],
                    ),
                  )
              ]),
        ),
      ],
    );
  }
}
