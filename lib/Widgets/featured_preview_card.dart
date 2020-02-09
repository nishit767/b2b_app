import 'package:b2b_app/Models/Product.dart';
import 'package:b2b_app/Shared/app_style.dart';
import 'package:b2b_app/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:b2b_app/Shared/random_color_gen.dart';
import 'dart:math';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductReviewCard extends StatefulWidget {
  ProductReviewCard({Key key,
    this.heading = 'Featured Products',
    this.productRange = 'Product Range',
    this.productSubtitle = '1500+ Sold'})
      : super(key: key);
  final String heading;
  final String productRange;
  final String productSubtitle;

  @override
  _ProductReviewCardState createState() => _ProductReviewCardState();
}

class _ProductReviewCardState extends State<ProductReviewCard> {
  var randomColor = ColorRand();
  var productStore = locator<ProductStore>();



  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 392, height: 816, allowFontScaling: true);

    int _itemNo = Random().nextInt(12) + 2;
    Color _bgColor = randomColor.gencolors[Random().nextInt(50)].withOpacity(
        0.5);
    return Column(
      children: <Widget>[
        Container(
          height: ScreenUtil().setHeight(50),
          color: _bgColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: ScreenUtil().setWidth(10),
              ),
              Text(
                widget.heading,
                style: AppStyle.headingStyle1,
              ),
              Container(
                width: ScreenUtil().setWidth(80),
              ),
              RaisedButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text('View All',
                      style: TextStyle(
                        color: Colors.white,
                      )))
            ],
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(_itemNo <= 2 ? 220 : 420),
          color: _bgColor,
          child: GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              children: [
                for (int i = 2; i <= _itemNo; i++)
                  Card(
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network(
                          productStore.products
                              .elementAt(Random().nextInt(50))
                              .imageURL,
                          fit: BoxFit.cover,
                          height: ScreenUtil().setHeight(129),
                          width: ScreenUtil().setWidth(220),
                        ),
//                        Placeholder(
//                          fallbackHeight: 140,
//                          fallbackWidth: 100,
//                        ),
                        Text(productStore.products
                            .elementAt(Random().nextInt(50))
                            .category, style: AppStyle.productHeading.copyWith(
                            fontSize: ScreenUtil().setSp(
                                20, allowFontScalingSelf: true)),),
                        Text(productStore.products
                            .elementAt(Random().nextInt(50))
                            .amountSold
                            .toString() +
                            ' Sold', style: AppStyle.productSub.copyWith(
                            fontSize: ScreenUtil().setSp(
                                14, allowFontScalingSelf: false)),)
                      ],
                    ),
                  )
              ]),
        ),
      ],
    );
  }
}
