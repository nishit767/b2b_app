import 'dart:math';

import 'package:b2b_app/Shared/app_style.dart';
import 'package:flutter/material.dart';

class CarouselFeaturedProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/texture_1.jpg'))),
      padding: EdgeInsets.all(10),
      height: 450,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 3,
                width: 100,
                color: Colors.lightBlue,
              ),
              Text('Sponsored Deals',
                  style: AppStyle.headingStyle1.copyWith(color: Colors.white)),
              Container(
                height: 3,
                width: 100,
                color: Colors.lightBlue,
              ),
            ],
          ),
          Container(
            height: 400,
            child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  for (int i = 0; i <= Random().nextInt(10) + 3; i++)
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 200.0,
                        height: 350.0,
                        child: Card(
                          elevation: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Image(
                                image: new NetworkImage(
                                    'https://picsum.photos/200/300'),
                              ),
                              Text(
                                'From Rs.505/Piece',
                                style: AppStyle.loginPageStyle,
                              ),
                              Text('Verified Seller',
                                style: AppStyle.subtitleStyle1,),
                            ],
                          ),
                        )),
                ]),
          ),
        ],
      ),
    );
  }
}
