import 'package:flutter/material.dart';

class WishPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return WishView();
  }
}

class WishView extends StatelessWidget {
  const WishView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Center(
            child: Text(
              'WISHLIST',
              style: TextStyle(
                  fontFamily: 'helvetica',
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          getCard(),
          getCard(),
        ],
      ),
    );
  }
}

Widget getCard() {
  return Card(
    elevation: 8,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'HP:Pavilion XCUv126',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          fontSize: 18,
                          color: Colors.black),
                    )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Size:14',
                        style: TextStyle(
                            fontFamily: 'helvetica',
                            fontSize: 13,
                            color: Colors.grey))),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Seller: RetailNet',
                        style: TextStyle(
                            fontFamily: 'helvetica',
                            fontSize: 13,
                            color: Colors.grey))),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Rs 45,000',
                          style: TextStyle(
                              fontFamily: 'helvetica',
                              fontSize: 17,
                              fontWeight: FontWeight.bold)))),
              Container(
                child: ButtonTheme(
                  minWidth: 250.0,
                  height: 30.0,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('Add to Cart', style: TextStyle(fontSize: 20)),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 30.0, 0.0),
                height: 80,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.network(
                    'https://in-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/8/q/8qg92pa_2.png',
                  ),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 50.0, 0.0),
                height: 25,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text('Qty : 1'),
                )),
            SizedBox(height: 21),
            Container(
              child: ButtonTheme(
                minWidth: 250.0,
                height: 30.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Remove', style: TextStyle(fontSize: 20)),
                ),
              ),
            )
          ]),
        )
      ],
    ),
  );
}
