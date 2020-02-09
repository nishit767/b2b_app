import 'package:b2b_app/Models/Product.dart';
import 'package:b2b_app/Shared/app_style.dart';
import 'package:b2b_app/Shared/random_color_gen.dart';
import 'package:b2b_app/locator.dart';
import 'package:flutter/material.dart';

class CategoryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryTextTheme: TextTheme(body2: AppStyle.loginPageHeadingStyle)),
      child: Scaffold(

        appBar: AppBar(
          automaticallyImplyLeading: true,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
          ],
          backgroundColor: Colors.blue[700],

          title: ListTile(

              leading: Icon(
                Icons.shop,
                color: Colors.white,
              ),
              title: Text(
                'Shoes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              )),
        ),
        body: ProductCard(),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  var productStore = locator<ProductStore>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            child: Text(
              'Featured Products in Shoes :',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 300,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    for (int i = 0; i <= 49; i++)
                      GradientProductCard(productStore.shoeProducts[i]),
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ],
            ),
          ),
          Container(
            child: Text('Most sold products :', style: AppStyle.headingStyle2),
          ),
          Container(
            height: 150,
            child: Stack(
              children: <Widget>[
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                  Container(
                    width: 1000,
                    margin: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 40,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.red[100], Colors.red]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 8),
                          blurRadius: 8,
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 20,
                        ),
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 20,
                        ),
                        Container(
                          width: 20,
                        ),
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 20,
                        ),
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 20,
                        ),
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 20,
                        ),
                        Image.network(
                          'https://github.com/iampawan/FUI01-NikeWebFlutter/blob/master/assets/images/shoe.png?raw=true',
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
          Container(
            child: Text(
              'More products :',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          for (int i = 0; i <= 49; i++)
            MessageListTile(productStore.shoeProducts[i]),
        ],
      ),
    );
  }
}

class GradientProductCard extends StatelessWidget {
  GradientProductCard(this.product, {
    Key key,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    var colorRand = ColorRand();

    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child: Container(
              width: 250,
              height: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      colorRand.gencolors[product.amountSold % 49].withAlpha(
                          100),
                      colorRand.gencolors[product.amountSold % 49]
                    ]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 8),
                    blurRadius: 8,
                  )
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 20,
                    top: 20,
                    child: Text(
                      '0' + product.name.substring(5, 6),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black.withOpacity(0.6),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        bottom: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(product.name, style: AppStyle.productHeading),
                          Text(
                            'Rs.' + product.price.toString().substring(0, 4),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: -15,
          child: Image.asset(
            product.imageURL,
            width: 310,
            height: 190,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

class MessageListTile extends StatelessWidget {
  MessageListTile(this.product, {
    Key key,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    var colorRand = ColorRand();

    return Container(
      height: 170,
      width: 150,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),

      child: Card(
        color: Colors.pink[100].withOpacity(0.8),
        //margin: EdgeInsets.only(left: 30, right: 30),
        elevation: 16,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(height: 6,),
                product.seller.isVerified
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.verified_user,
                      color: Colors.green,
                    ),
                    Container(width: 2,),
                    Text('Verified', style: AppStyle.subtitleStyle1,),
                  ],
                )
                    : SizedBox.shrink(),
                Container(
                  height: 10,
                ),
                Image.asset(
                  product.imageURL,
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 7),
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Text(
                      product.seller.rating.toString().substring(0, 3) +
                          ' Seller Rating',
                      style: TextStyle(
                        fontSize: 11,
                      )),
                ),
                Row(children: <Widget>[
                  Text(
                    'Nike',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    width: 160,
                  ),
                  product.isFavourite != null ? Icon(Icons.favorite) : Icon(
                      Icons.favorite_border),
                ]),
                Container(
                  width: 200,
                  child: Text(product.description,
                      overflow: TextOverflow.ellipsis,
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Rs.' + product.price.toString().substring(0, 4),
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Transform.scale(
                      scale: 0.9,
                      child: Container(
                        width: 162,
                        padding: EdgeInsets.only(left: 30),
                        child: RaisedButton.icon(
                          elevation: 5,
                          icon: Icon(Icons.add_shopping_cart),
                          label: Text('Add to Cart'),
                          color: Colors.blue,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    for (int i = 0; i < product.rating.toInt(); i++)
                      Icon(Icons.star),
                    for (int i = product.rating.toInt(); i < 5; i++)
                      Icon(Icons.star_border),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Text(
                        product.amountSold.toString() + '+ sold',
                        style: TextStyle(
                          color: Colors.yellow[200],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(145, 0, 0, 0),
                  child: product.isFreeDelivery
                      ? Text('FREE Delivery')
                      : Text(''),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
